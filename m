Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB5B13422B
	for <lists+linux1394-devel@lfdr.de>; Wed,  8 Jan 2020 13:49:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1ipAmP-0004LE-Sw; Wed, 08 Jan 2020 12:49:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <yuehaibing@huawei.com>) id 1ipAmO-0004L7-9q
 for linux1394-devel@lists.sourceforge.net; Wed, 08 Jan 2020 12:49:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7kmWH7kVgG69gDEFcpB1SNau/l59gJ+ayWiplyImmOg=; b=fTMkjfc2yPs1wqFwRbgWKR4PYO
 Byar0KDbxJ2tFWSCPXhLbcW76ortYKDbE7D6P0+XgciM70F2f7BEQgtUxaB/Qmf+a2Ui6ufiaq7U2
 2Z8nLG6wh+47cR7gv4SBpaPXPtWwtBZDEB/3ZBxWI2f6cVmoQpC/8zDcmVUCi3doTFIU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=7kmWH7kVgG69gDEFcpB1SNau/l59gJ+ayWiplyImmOg=; b=L
 NIgYU4uPpYXImBFwmIr5AnrB9sEZM4JNZYpWmsSHNcADAbE45ZKN0H3vfRKxX05CQqqUDDDsIgl95
 hHdpIqw4smEPJ/0HytmzPDKJ1VmOiR+JlootLlaI9myj7KukDqsNeJ3AxSOmPFGX9BgqsDm9TF4zb
 S4Q97DCfFO3KdLRM=;
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ipAmL-00ETXB-UW
 for linux1394-devel@lists.sourceforge.net; Wed, 08 Jan 2020 12:49:44 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id D891BD92E3646F5D27B5;
 Wed,  8 Jan 2020 20:49:32 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Wed, 8 Jan 2020
 20:49:24 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <stefanr@s5r6.in-berlin.de>
Subject: [PATCH -next] firewire: net: remove set but not used variable 'dev'
Date: Wed, 8 Jan 2020 20:49:05 +0800
Message-ID: <20200108124905.45748-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ipAmL-00ETXB-UW
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
Cc: linux1394-devel@lists.sourceforge.net, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

drivers/firewire/net.c:491:23: warning:
 variable dev set but not used [-Wunused-but-set-variable]

This variable also is not needed.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/firewire/net.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/firewire/net.c b/drivers/firewire/net.c
index 2878564..4c3fd2e 100644
--- a/drivers/firewire/net.c
+++ b/drivers/firewire/net.c
@@ -488,7 +488,6 @@ static int fwnet_finish_incoming_packet(struct net_device *net,
 					struct sk_buff *skb, u16 source_node_id,
 					bool is_broadcast, u16 ether_type)
 {
-	struct fwnet_device *dev;
 	int status;
 
 	switch (ether_type) {
@@ -502,7 +501,6 @@ static int fwnet_finish_incoming_packet(struct net_device *net,
 		goto err;
 	}
 
-	dev = netdev_priv(net);
 	/* Write metadata, and then pass to the receive level */
 	skb->dev = net;
 	skb->ip_summed = CHECKSUM_NONE;
-- 
2.7.4




_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
