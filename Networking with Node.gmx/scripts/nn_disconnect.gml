///gmsio_disconnect()
{
    //Non-HTML5
    if (os_browser == browser_not_a_browser) {
        network_destroy(sys_nn.client);
    }
    
    //Kill the controller
    with (sys_nn) {
        instance_destroy();
    }
}
