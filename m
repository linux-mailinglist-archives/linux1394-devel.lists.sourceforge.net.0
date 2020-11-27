Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F1852C6BDD
	for <lists+linux1394-devel@lfdr.de>; Fri, 27 Nov 2020 20:14:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1kijBs-0001eR-MJ; Fri, 27 Nov 2020 19:13:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1kiivp-00011C-SO
 for linux1394-devel@lists.sourceforge.net; Fri, 27 Nov 2020 18:57:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Content-Type:MIME-Version:To:Subject:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WwwTEtP0qsYgkgwIwtWvr/3OkL1IgVikaCRBANRZV4E=; b=cBEfb80Fu8sx6wHlXEYy0JC8wk
 YlhPiyBrVxG2lSnVO6jqYpflYudkpa3eFPEdP+dK5uSdiNa4GTfUgXp7M8i5KRrMbRm4oaCozPKkh
 GyEscU5mJIRsS2W4l0kAKmFXnAhPeXVL70GMHJBJG/Ctn8oL5eK28+O4Arl8v+Frajgo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Content-Type:MIME-Version:To:Subject:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=WwwTEtP0qsYgkgwIwtWvr/3OkL1IgVikaCRBANRZV4E=; b=C
 ssHhsZM9tKWp62MobQEKipRuLn2El5UDm74TuKnOoGex+1zI82Bd93ggy8DlpHiqkuJFqWqj7xQjG
 LXyxJ2WzHA8+bBI4MCgjlB41irKK/CAIfEjIgkYTvmM5IE6bqm66Nko4sXDLIVWngPtzXJHjsfq7Y
 ow631n5zp9aeTBfM=;
Received: from [112.49.34.2] (helo=mail.chinaebill.cn)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1kiivf-0023Xy-HB
 for linux1394-devel@lists.sourceforge.net; Fri, 27 Nov 2020 18:57:21 +0000
Received: by mail.chinaebill.cn (Postfix)
 id 4386A48039D; Sat, 28 Nov 2020 02:57:04 +0800 (CST)
Date: Sat, 28 Nov 2020 02:57:04 +0800 (CST)
From: MAILER-DAEMON@chinaebill.cn (Mail Delivery System)
Subject: Undelivered Mail Returned to Sender
To: linux1394-devel@lists.sourceforge.net
Auto-Submitted: auto-replied
MIME-Version: 1.0
Message-Id: <20201127185704.4386A48039D@mail.chinaebill.cn>
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: qq.com]
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1kiivf-0023Xy-HB
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4515687497445212841=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

This is a MIME-encapsulated message.

--===============4515687497445212841==
Content-Type: multipart/report; report-type=delivery-status;
	boundary="DDAA548039D.1606503424/mail.chinaebill.cn"

This is a MIME-encapsulated message.

--DDAA548039D.1606503424/mail.chinaebill.cn
Content-Description: Notification
Content-Type: text/plain; charset=us-ascii

This is the mail system at host mail.chinaebill.cn.

I'm sorry to have to inform you that your message could not
be delivered to one or more recipients. It's attached below.

For further assistance, please send mail to postmaster.

If you do so, please include this problem report. You can
delete your own text from the attached returned message.

                   The mail system

<1105622298@qq.com>: host mx3.qq.com[183.232.93.177] said: 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.
    (in reply to end of DATA command)

<1336743730@qq.com>: host mx3.qq.com[183.232.93.177] said: 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.
    (in reply to end of DATA command)

<1390070124@qq.com>: host mx3.qq.com[183.232.93.177] said: 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.
    (in reply to end of DATA command)

<1401460413@qq.com>: host mx3.qq.com[183.232.93.177] said: 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.
    (in reply to end of DATA command)

<1456822240@qq.com>: host mx3.qq.com[183.232.93.177] said: 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.
    (in reply to end of DATA command)

<1492775506@qq.com>: host mx3.qq.com[183.232.93.177] said: 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.
    (in reply to end of DATA command)

<1580855627@qq.com>: host mx3.qq.com[183.232.93.177] said: 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.
    (in reply to end of DATA command)

<1662800543@qq.com>: host mx3.qq.com[183.232.93.177] said: 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.
    (in reply to end of DATA command)

<1748140316@qq.com>: host mx3.qq.com[183.232.93.177] said: 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.
    (in reply to end of DATA command)

<1871076592@qq.com>: host mx3.qq.com[183.232.93.177] said: 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.
    (in reply to end of DATA command)

<1966311679@qq.com>: host mx3.qq.com[183.232.93.177] said: 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.
    (in reply to end of DATA command)

<2237317354@qq.com>: host mx3.qq.com[183.232.93.177] said: 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.
    (in reply to end of DATA command)

<2398386087@qq.com>: host mx3.qq.com[183.232.93.177] said: 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.
    (in reply to end of DATA command)

<2455267162@qq.com>: host mx3.qq.com[183.232.93.177] said: 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.
    (in reply to end of DATA command)

<2516580331@qq.com>: host mx3.qq.com[183.232.93.177] said: 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.
    (in reply to end of DATA command)

<2675055981@qq.com>: host mx3.qq.com[183.232.93.177] said: 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.
    (in reply to end of DATA command)

<2806781062@qq.com>: host mx3.qq.com[183.232.93.177] said: 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.
    (in reply to end of DATA command)

<2939129186@qq.com>: host mx3.qq.com[183.232.93.177] said: 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.
    (in reply to end of DATA command)

<3010284009@qq.com>: host mx3.qq.com[183.232.93.177] said: 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.
    (in reply to end of DATA command)

<571631206@qq.com>: host mx3.qq.com[183.232.93.177] said: 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.
    (in reply to end of DATA command)

--DDAA548039D.1606503424/mail.chinaebill.cn
Content-Description: Delivery report
Content-Type: message/delivery-status

Reporting-MTA: dns; mail.chinaebill.cn
X-Postfix-Queue-ID: DDAA548039D

Final-Recipient: rfc822; 1105622298@qq.com
Original-Recipient: rfc822;1105622298@qq.com
Action: failed
Status: 5.0.0
Remote-MTA: dns; mx3.qq.com
Diagnostic-Code: smtp; 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.

Final-Recipient: rfc822; 1336743730@qq.com
Original-Recipient: rfc822;1336743730@qq.com
Action: failed
Status: 5.0.0
Remote-MTA: dns; mx3.qq.com
Diagnostic-Code: smtp; 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.

Final-Recipient: rfc822; 1390070124@qq.com
Original-Recipient: rfc822;1390070124@qq.com
Action: failed
Status: 5.0.0
Remote-MTA: dns; mx3.qq.com
Diagnostic-Code: smtp; 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.

Final-Recipient: rfc822; 1401460413@qq.com
Original-Recipient: rfc822;1401460413@qq.com
Action: failed
Status: 5.0.0
Remote-MTA: dns; mx3.qq.com
Diagnostic-Code: smtp; 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.

Final-Recipient: rfc822; 1456822240@qq.com
Original-Recipient: rfc822;1456822240@qq.com
Action: failed
Status: 5.0.0
Remote-MTA: dns; mx3.qq.com
Diagnostic-Code: smtp; 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.

Final-Recipient: rfc822; 1492775506@qq.com
Original-Recipient: rfc822;1492775506@qq.com
Action: failed
Status: 5.0.0
Remote-MTA: dns; mx3.qq.com
Diagnostic-Code: smtp; 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.

Final-Recipient: rfc822; 1580855627@qq.com
Original-Recipient: rfc822;1580855627@qq.com
Action: failed
Status: 5.0.0
Remote-MTA: dns; mx3.qq.com
Diagnostic-Code: smtp; 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.

Final-Recipient: rfc822; 1662800543@qq.com
Original-Recipient: rfc822;1662800543@qq.com
Action: failed
Status: 5.0.0
Remote-MTA: dns; mx3.qq.com
Diagnostic-Code: smtp; 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.

Final-Recipient: rfc822; 1748140316@qq.com
Original-Recipient: rfc822;1748140316@qq.com
Action: failed
Status: 5.0.0
Remote-MTA: dns; mx3.qq.com
Diagnostic-Code: smtp; 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.

Final-Recipient: rfc822; 1871076592@qq.com
Original-Recipient: rfc822;1871076592@qq.com
Action: failed
Status: 5.0.0
Remote-MTA: dns; mx3.qq.com
Diagnostic-Code: smtp; 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.

Final-Recipient: rfc822; 1966311679@qq.com
Original-Recipient: rfc822;1966311679@qq.com
Action: failed
Status: 5.0.0
Remote-MTA: dns; mx3.qq.com
Diagnostic-Code: smtp; 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.

Final-Recipient: rfc822; 2237317354@qq.com
Original-Recipient: rfc822;2237317354@qq.com
Action: failed
Status: 5.0.0
Remote-MTA: dns; mx3.qq.com
Diagnostic-Code: smtp; 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.

Final-Recipient: rfc822; 2398386087@qq.com
Original-Recipient: rfc822;2398386087@qq.com
Action: failed
Status: 5.0.0
Remote-MTA: dns; mx3.qq.com
Diagnostic-Code: smtp; 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.

Final-Recipient: rfc822; 2455267162@qq.com
Original-Recipient: rfc822;2455267162@qq.com
Action: failed
Status: 5.0.0
Remote-MTA: dns; mx3.qq.com
Diagnostic-Code: smtp; 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.

Final-Recipient: rfc822; 2516580331@qq.com
Original-Recipient: rfc822;2516580331@qq.com
Action: failed
Status: 5.0.0
Remote-MTA: dns; mx3.qq.com
Diagnostic-Code: smtp; 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.

Final-Recipient: rfc822; 2675055981@qq.com
Original-Recipient: rfc822;2675055981@qq.com
Action: failed
Status: 5.0.0
Remote-MTA: dns; mx3.qq.com
Diagnostic-Code: smtp; 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.

Final-Recipient: rfc822; 2806781062@qq.com
Original-Recipient: rfc822;2806781062@qq.com
Action: failed
Status: 5.0.0
Remote-MTA: dns; mx3.qq.com
Diagnostic-Code: smtp; 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.

Final-Recipient: rfc822; 2939129186@qq.com
Original-Recipient: rfc822;2939129186@qq.com
Action: failed
Status: 5.0.0
Remote-MTA: dns; mx3.qq.com
Diagnostic-Code: smtp; 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.

Final-Recipient: rfc822; 3010284009@qq.com
Original-Recipient: rfc822;3010284009@qq.com
Action: failed
Status: 5.0.0
Remote-MTA: dns; mx3.qq.com
Diagnostic-Code: smtp; 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.

Final-Recipient: rfc822; 571631206@qq.com
Original-Recipient: rfc822;571631206@qq.com
Action: failed
Status: 5.0.0
Remote-MTA: dns; mx3.qq.com
Diagnostic-Code: smtp; 550 SPF check failed
    [MKM5YrGi8bynYeg9ZXTROxf1pepAI0trX3zAnzLeGAlkvWaVgf9jdWAYuxRBoCkNuQ==  IP:
    112.49.34.2].
    http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.

--DDAA548039D.1606503424/mail.chinaebill.cn
Content-Description: Undelivered Message
Content-Type: message/rfc822



--DDAA548039D.1606503424/mail.chinaebill.cn--

--===============4515687497445212841==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4515687497445212841==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============4515687497445212841==--
