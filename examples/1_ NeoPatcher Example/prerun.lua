lib.log_error('NeoPatcher Example v0.2.0 -example was patched with NeoPatcher!')

lib.set_waiting('neopatch_example', '0.2.0 -example', 'YES', 'NeoPatcher2')

RegisterEvent(function() lib.set_waiting('neopatch_example', '0.2.0 -example', 'NO', 'NeoPatcher2') end, 'PLUGINS_LOADED')