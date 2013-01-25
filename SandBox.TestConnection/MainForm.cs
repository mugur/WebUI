using System;
using System.Windows.Forms;
using SandBox.Connection;
using SandBox.Data;
using SandBox.Db;

namespace SandBox.TestConnection
{
    public partial class MainForm : Form
    {
        private readonly ConnectionServer   _server;
        private readonly ConnectionClientEx _client;
        
        private void AddToListBox(ListBox listBox, String item)
        {
            if (listBox.InvokeRequired)
            {
                BeginInvoke(new MethodInvoker(() => listBox.Items.Add(item)));
            }
            else
            {
                listBox.Items.Add(item);
            }
        }

        private void AddToTextBox(TextBox textBox, String text)
        {
            if (textBox.InvokeRequired)
            {
                BeginInvoke(new MethodInvoker(() => textBox.Text = text));
            }
            else
            {
                textBox.Text = text;
            }
        }

        private static String ShowMessage(byte[] ba)
        {
            return "Length: " + ba.Length + ", Data: " + DataUtils.ByteArrayToHexString(ba);
        }

        public MainForm()
        {
            InitializeComponent();
            Application.ApplicationExit += ApplicationApplicationExit;

            _server = new ConnectionServer();
            _server.OnConnectionServerEvent += OnServerEvent;

            _client = ConnectionClientEx.Instance;
            _client.OnConnectionClientExEvent += OnClientEvent;

            tbDb.Text = DbManager.GetConnectionStatus() ? "connected" : "not connected";

            tbTime_1.Text = DateTime.Now.ToString("yyyy-MM-dd HH':'mm':'ss");
        }

        private void ApplicationApplicationExit(object sender, EventArgs e)
        {
            if (_server != null) _server.Dispose();
            if (_client != null) _client.Dispose();
        }

        private void btnSendReport_Click(object sender, EventArgs e)
        {
            CommandForm commandForm = new CommandForm(_server);
                        commandForm.ShowDialog();
        }

        private void BtnCheckTimeClick(object sender, EventArgs e)
        {
            DateTime dt = DateTime.Now;
            tbTime_2.Text = dt.ToString("yyyy-MM-dd HH':'mm':'ss"); ;

            DateTime startTime;
            DateTime.TryParse(tbTime_1.Text, out startTime);

            var dif = (dt - startTime).TotalSeconds;
            labelTime.Text = (Int32)dif + " секунд";
        }
    }//end form
}
