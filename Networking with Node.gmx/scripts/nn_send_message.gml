///gmsio_send_message(msg)
{
    if (os_browser == browser_not_a_browser) {
        var bf = buffer_create(128, buffer_grow, 1);
        buffer_write(bf, buffer_string, argument0);
        network_send_raw(sys_nn.client, bf, buffer_tell(bf)-1);
        buffer_delete(bf);
    }
}
