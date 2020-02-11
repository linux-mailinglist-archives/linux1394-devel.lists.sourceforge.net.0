Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D9F159D2F
	for <lists+linux1394-devel@lfdr.de>; Wed, 12 Feb 2020 00:28:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1j1ewz-0000qq-A4; Tue, 11 Feb 2020 23:28:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <gustavo@embeddedor.com>) id 1j1ewx-0000qh-Il
 for linux1394-devel@lists.sourceforge.net; Tue, 11 Feb 2020 23:28:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dlq1N3Fubvme0hsUEXmBUOOTkEBmRxGWUp1Spz2xoes=; b=jUNVah1gUzQZAhuTBVXevoMWAW
 2JTyG9LqO/uP6BTAPqA/w5QAzZuyZnhRJ97pINbt5UJcgKPli5MEWGlNW//eANUl3IyRAjdX4NYMC
 9kSrZH5rLeLCa2cfkORN4d41Wiq2Tb2zOSXrXgH8ur3RmUO9SNxAkDHjnHi0H7k+uW+0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=dlq1N3Fubvme0hsUEXmBUOOTkEBmRxGWUp1Spz2xoes=; b=V
 HCtAHM4bPz1EH1V3FqFppy7Yk5aiSqGW4oa+6nEuRg9M5GcJIRd8F4oaxT3pG+llSAYDORTErzst+
 H/b9Sg1Zcqt9htylLq58U5AqRQPzA4hPB+8lgjPAv6ebYr8q1srp0OnAHtTdck8qzh/spSbguwoUx
 AKoJq3XYXJ3+CGrI=;
Received: from gateway31.websitewelcome.com ([192.185.143.47])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1j1eww-000wRv-0g
 for linux1394-devel@lists.sourceforge.net; Tue, 11 Feb 2020 23:28:15 +0000
Received: from cm10.websitewelcome.com (cm10.websitewelcome.com [100.42.49.4])
 by gateway31.websitewelcome.com (Postfix) with ESMTP id 278B66FD9C8
 for <linux1394-devel@lists.sourceforge.net>;
 Tue, 11 Feb 2020 17:04:19 -0600 (CST)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id 1eZnj9neIEfyq1eZnjJkaI; Tue, 11 Feb 2020 17:04:19 -0600
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dlq1N3Fubvme0hsUEXmBUOOTkEBmRxGWUp1Spz2xoes=; b=cgrquLM6s6/IT+C+Wi9m5OhnFR
 8zdv7LDog2pwH+qIbPwt0S4CPL7Vy9OJXJGTlrY+eOPR3uV8e8dM+cxUVkDsNiJ9YonYhYn/6dtAy
 iOVWloeYjcwS5KKDgBB4j9ZCnF8s/eu794QmGcp5ermySwD5l5WK2foF7sI3+2XKFtLaAbRetw3bb
 qLyqK3w+rU3JZYVbnunBoFW/gvd+qEpG5kyte1b/IIaq74a7Y4s4C6/p01h4ZF+O56VZ3OW39hqoR
 rO7Ptj3/Auvvg9vTbaKeqYtXoav97uKAPumwq3cRovYy54a/KKxp16rP/+oLSMUOXFbU0/sSJHHCM
 B6s8Xhug==;
Received: from [200.68.140.36] (port=28979 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1j1eZl-003Rge-LZ; Tue, 11 Feb 2020 17:04:17 -0600
Date: Tue, 11 Feb 2020 17:06:52 -0600
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Stefan Richter <stefanr@s5r6.in-berlin.de>
Subject: [PATCH] firewire: cdev: Replace zero-length array with
 flexible-array member
Message-ID: <20200211230652.GA11360@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.sourceforge.net
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 200.68.140.36
X-Source-L: No
X-Exim-ID: 1j1eZl-003Rge-LZ
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [200.68.140.36]:28979
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 2
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: gnu.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [192.185.143.47 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1j1eww-000wRv-0g
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
Cc: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

The current codebase makes use of the zero-length array language
extension to the C90 standard, but the preferred mechanism to declare
variable-length types such as these ones is a flexible array member[1][2],
introduced in C99:

struct foo {
        int stuff;
        struct boo array[];
};

By making use of the mechanism above, we will get a compiler warning
in case the flexible array does not occur last in the structure, which
will help us prevent some kind of undefined behavior bugs from being
inadvertenly introduced[3] to the codebase from now on.

This issue was found with the help of Coccinelle.

[1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
[2] https://github.com/KSPP/linux/issues/21
[3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")

Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 drivers/firewire/core-cdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 16a7045736a9..3626e06dedba 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -130,7 +130,7 @@ struct inbound_transaction_resource {
 struct descriptor_resource {
 	struct client_resource resource;
 	struct fw_descriptor descriptor;
-	u32 data[0];
+	u32 data[];
 };
 
 struct iso_resource {
-- 
2.25.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
