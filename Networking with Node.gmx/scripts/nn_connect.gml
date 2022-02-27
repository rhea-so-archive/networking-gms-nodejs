///gmsio_connect(host,port)
{
    //Create the controller
    var inst = instance_create(0, 0, sys_nn);

    if (os_browser == browser_not_a_browser) {
        inst.client = network_create_socket(network_socket_tcp);
        if (network_connect_raw(inst.client, argument0, argument1) >= 0) {
            inst.status = gmsio_status_connected;
        }
        else {
            with (inst) {
                instance_destroy();
            }
        }
    }
}
