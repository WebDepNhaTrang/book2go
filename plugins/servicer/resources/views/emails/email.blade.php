<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>{{ setting('site_title') }}</title>
</head>
<body style="margin: 0;">
<table width="100%" id="mainStructure" border="0" cellspacing="0" cellpadding="0"
       style="background-color: #e1e1e1;border-spacing: 0;">
    <!-- START TAB TOP -->
    <tbody>
    <tr>
        <td valign="top" style="border-collapse: collapse;">
            <table width="100%" align="center" border="0" cellspacing="0" cellpadding="0" style="border-spacing: 0;">
                <tbody>
                <tr>
                    <td valign="top" height="6" style="border-collapse: collapse;">
                        <table width="800" align="center" border="0" cellspacing="0" cellpadding="0" class="full-width"
                               style="border-spacing: 0;">
                            <!-- start space height -->
                            <tbody>
                            <tr>
                                <td height="5" valign="top" style="border-collapse: collapse;"></td>
                            </tr>
                            <!-- end space height -->
                            <tr>
                                <td height="5" class="remove" style="border-collapse: collapse;"></td>
                            </tr>
                            <!-- start space height -->
                            <tr>
                                <td height="5" valign="top" style="border-collapse: collapse;"></td>
                            </tr>
                            <tr>
                                <td height="5" class="remove" style="border-collapse: collapse;"></td>
                            </tr>
                            <!-- end space height -->
                            </tbody>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>
        </td>
    </tr>
    <!-- END TAB TOP -->
    <!--START TOP NAVIGATION ?LAYOUT-->
    <tr>
        <td align="center" valign="top" class="fix-box" style="border-collapse: collapse;">
            <table width="100%" align="center" border="0" cellspacing="0" cellpadding="0" class="full-width"
                   style="border-spacing: 0;">
                <!-- START CONTAINER NAVIGATION -->
                <tbody>
                <tr>
                    <td valign="top" style="border-collapse: collapse;">
                        <!-- start top navigation container -->
                        <table width="800" align="center" border="0" cellspacing="0" cellpadding="0" class="full-width"
                               style="border-spacing: 0;">
                            <tbody>
                            <tr>
                                <td valign="top" bgcolor="ffffff"  style="border-collapse: collapse;">
                                    <!-- start top navigaton -->
                                    <table width="800" align="center" border="0" cellspacing="0" cellpadding="0"
                                           class="full-width" style="border-spacing: 0;">
                                        <tbody>
                                        <tr>
                                            <td valign="top" style="border-collapse: collapse;">
                                                <table align="left" border="0" cellspacing="0" cellpadding="0"
                                                       class="container2" style="border-spacing: 0;">
                                                    <tbody>
                                                    <tr>
                                                        <td height="10" style="border-collapse: collapse;"></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="remove-479" height="12"
                                                            style="border-collapse: collapse;"></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="remove-479" height="12"
                                                            style="border-collapse: collapse;"></td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" valign="top"
                                                            style="border-collapse: collapse;">
                                                            <table align="center" border="0" cellspacing="0"
                                                                   cellpadding="0" style="border-spacing: 0;">
                                                                <tbody>
                                                                <tr>
                                                                    <!--start  space width -->
                                                                    <td valign="top" align="center" class="remove-479"
                                                                        style="border-collapse: collapse;">
                                                                        <table width="20" align="right" border="0"
                                                                               cellpadding="0" cellspacing="0"
                                                                               style="height: 5px;border-spacing: 0;">
                                                                            <tbody>
                                                                            <tr>
                                                                                <td valign="top"
                                                                                    style="border-collapse: collapse;">
                                                                                </td>
                                                                            </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </td>
                                                                    <!--start  space width -->
                                                                    <td align="center" valign="top"
                                                                        style="font-size:13px;line-height:22px;color:#fff;font-weight:normal;text-align:center;font-family:Tahoma,Helvetica,Arial,sans-serif;border-collapse:collapse">
                                                                        <a href="{{ url('/') }}" style="color: #fff; text-decoration: none !important;"
                                                                           target="_blank">
                                                                            
                                                                            @if (empty(theme_option('logo')))
                                                                                {{ setting('site_title') }}
                                                                            @else
                                                                                <img title="{{ setting('site_title') }}"
                                                                                    src="{{ $message->embed( url(theme_option('logo'))) }}"
                                                                                    width="107"
                                                                                    style="max-width: 107px;display: block !important;height: auto !important;"
                                                                                    alt="{{ setting('site_title') }}" border="0"
                                                                                    hspace="0"
                                                                                    vspace="0">
                                                                            @endif
                                                                        </a>
                                                                    </td>
                                                                </tr>
                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                                <!--start content nav -->
                                                <table border="0" align="right" cellpadding="0" cellspacing="0"
                                                       class="container2" style="border-spacing: 0;">
                                                    <tbody>
                                                    <tr>
                                                        <td class="remove-479" height="30"
                                                            style="border-collapse: collapse;"></td>
                                                    </tr>
                                                    <!--start event date -->
                                                    <tr>
                                                        <td valign="mindle" align="center"
                                                            style="border-collapse: collapse;">
                                                            <table align="right" border="0" cellpadding="0"
                                                                   cellspacing="0" class="clear-align"
                                                                   style="border-spacing: 0;">
                                                                <tbody>
                                                                <tr>
                                                                    <td style="border-collapse: collapse;">
                                                                        
                                                                    </td>
                                                                    <td style="border-collapse: collapse;">
                                                                        &nbsp;&nbsp;</td>
                                                                    <td style="font-size: 27px;line-height: 22px;color: #800000;font-weight: 900;text-align: center;font-family: Tahoma, Helvetica, Arial, sans-serif;border-collapse: collapse;">
                                                                        {{trans('servicer::public.email_booking.booking_confirmation')}}
                                                                    </td>
                                                                    <!--start  space width -->
                                                                    <td valign="top" align="center" class="remove-479"
                                                                        style="border-collapse: collapse;">
                                                                        <table width="20" align="right" border="0"
                                                                               cellpadding="0" cellspacing="0"
                                                                               style="height: 5px;border-spacing: 0;">
                                                                            <tbody>
                                                                            <tr>
                                                                                <td valign="top"
                                                                                    style="border-collapse: collapse;">
                                                                                </td>
                                                                            </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </td>
                                                                    <!--start  space width -->
                                                                </tr>
                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <!--end event date -->
                                                    <tr>
                                                        <td height="10" style="border-collapse: collapse;"></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="remove-479" height="20"
                                                            style="border-collapse: collapse;"></td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                                <!--end content nav -->
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <!-- end top navigaton -->
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <!-- end top navigation container -->
                    </td>
                </tr>
                <!-- END CONTAINER NAVIGATION -->
                </tbody>
            </table>
        </td>
    </tr>
    <!--END TOP NAVIGATION LAYOUT-->


    <!-- START MAIN CONTENT-->
    {!! $content !!}
    <!-- END MAIN CONTENT-->
    
    
    <!-- START FOOTER-BOX-->
    <tr>
        <td align="center" valign="top" class="fix-box" style="border-collapse: collapse;">
            <!-- start layout-7 container -->
            <table width="100%" align="center" border="0" cellspacing="0" cellpadding="0" class="full-width"
                   style="border-spacing: 0;">
                <tbody>
                <tr>
                    <td valign="top" style="border-collapse: collapse;">
                        <table width="800" align="center" border="0" cellspacing="0" cellpadding="0" class="full-width"
                               bgcolor="#3a3a3a" style="border-spacing: 0;">
                            <!--start space height -->
                            <tbody>
                            <tr>
                                <td height="20" style="border-collapse: collapse;"></td>
                            </tr>
                            <!--end space height -->
                            <tr>
                                <td valign="top" align="center" style="border-collapse: collapse;">
                                    <!-- start logo footer and address -->
                                    <table width="760" align="center" border="0" cellspacing="0" cellpadding="0"
                                           class="container" style="border-spacing: 0;">
                                        <tbody>
                                        <tr>
                                            <td valign="top" style="border-collapse: collapse;">
                                                <!--start icon socail navigation -->
                                                <table width="100%" border="0" align="center" cellpadding="0"
                                                       cellspacing="0" style="border-spacing: 0;">
                                                    <tbody>
                                                    <tr>
                                                        <td valign="top" align="center"
                                                            style="border-collapse: collapse;">
                                                            <table width="100%" border="0" align="left" cellpadding="0"
                                                                   cellspacing="0" class="full-width"
                                                                   style="border-spacing: 0;">
                                                                <tbody>
                                                                <tr>
                                                                    <td align="left" valign="middle"
                                                                        class="clear-padding"
                                                                        style="border-collapse: collapse;">
                                                                        <table width="370" border="0" align="left"
                                                                               cellpadding="0" cellspacing="0"
                                                                               class="col-2" style="border-spacing: 0;">
                                                                            <tbody>
                                                                            <tr>
                                                                                <td height="10"
                                                                                    style="border-collapse: collapse;"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="font-size: 13px;line-height: 15px;font-family: Arial,Tahoma, Helvetica, sans-serif;color: #a7a9ac;font-weight: normal;text-align: left;border-collapse: collapse;">
                                                                                    {{__('Email:')}} <a
                                                                                            href="mailto:{{setting('email_support')}}"
                                                                                            target="_blank"
                                                                                            style="text-decoration: none; color: #a7a9ac; font-weight: normal;">
                                                                                            {{setting('email_support')}}
                                                                                        </a><br>
                                                                                    {{trans('servicer::public.email_booking.phone')}} <a
                                                                                            href="tel:{{setting('contact_phone')}}"
                                                                                            target="_blank"
                                                                                            style="text-decoration: none; color: #a7a9ac; font-weight: normal;">
                                                                                        {{setting('contact_phone')}}</a>
                                                                                </td>
                                                                            </tr>
                                                                            </tbody>
                                                                        </table>
                                                                        <!--end icon socail navigation -->
                                                                    </td>
                                                                </tr>
                                                                </tbody>
                                                            </table>
                                                            <!-- end logo footer and address -->
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr>
                                        <!--start space height -->
                                        <tr>
                                            <td height="20" style="border-collapse: collapse;"></td>
                                        </tr>
                                        <!--end space height -->
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <!-- start space height -->
                            <tr>
                                <td height="10" valign="top" style="border-collapse: collapse;"></td>
                            </tr>
                            <!-- end space height -->
                            </tbody>
                        </table>
                        <!-- end layout-FOOTER-BOX container -->
                    </td>
                </tr>
                <!-- END FOOTER-BOX-->
                <!-- START FOOTER COPY RIGHT  -->
                <tr>
                    <td align="center" valign="top" class="fix-box" style="border-collapse: collapse;">
                        <!-- start layout-7 container -->
                        <table width="100%" align="center" border="0" cellspacing="0" cellpadding="0" class="full-width"
                               style="border-spacing: 0;">
                            <!-- start space height -->
                            <tbody>
                            <tr>
                                <td height="5" valign="top" style="border-collapse: collapse;"></td>
                            </tr>
                            <!-- end space height -->
                            <tr>
                                <td align="center" valign="top" style="border-collapse: collapse;">
                                    <table width="800" align="center" border="0" cellspacing="0" cellpadding="0"
                                           class="container" style="border-spacing: 0;">
                                        <tbody>
                                        <tr>
                                            <td valign="top" align="center" style="border-collapse: collapse;">
                                                <table width="560" align="center" border="0" cellspacing="0"
                                                       cellpadding="0" class="container" style="border-spacing: 0;">
                                                    <tbody>
                                                    <tr>
                                                        <!-- start COPY RIGHT content -->
                                                        <td valign="top" align="center"
                                                            style="font-size: 11px;line-height: 22px;font-family: Arial,Tahoma, Helvetica, sans-serif;color: #919191;font-weight: normal;border-collapse: collapse;">

                                                            {{trans('servicer::public.email_booking.copy_right', ['year' => Carbon::now()->format('Y')])}}
                                                        </td>
                                                        <!-- end COPY RIGHT content -->
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <!--  END FOOTER COPY RIGHT -->
                            <!-- start space height -->
                            <tr>
                                <td height="20" valign="top" style="border-collapse: collapse;"></td>
                            </tr>
                            <!-- end space height -->
                            </tbody>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>
</body>
</html>
