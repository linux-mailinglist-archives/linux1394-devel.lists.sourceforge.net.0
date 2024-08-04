Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B99C1946ED9
	for <lists+linux1394-devel@lfdr.de>; Sun,  4 Aug 2024 15:03:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1saat5-0005fn-AS;
	Sun, 04 Aug 2024 13:03:02 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1saat3-0005fC-Ao
 for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Aug 2024 13:03:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=p2/8Uhv2yJT1ffx5iSM4w272zr0fR0S1Kk6bKcSHexE=; b=TjXXMu9M9WkaGOequa3IrBbn1G
 qHU3xkyMGkfEBibf9BaIk9nJVHw+SrJmjiRV0zQDkJsO2lHNwm/VkyxJjvtgaPSA8Rvz0EwsZCXd8
 XMIj9zv+Ov+ok3H8FnjoOkDRUv8bFTIxLfjV1/qmndyNES9WJZ3s6+zUOuQLhXqcmRQ0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=p2/8Uhv2yJT1ffx5iSM4w272zr0fR0S1Kk6bKcSHexE=; b=bNiJHQPmRAMBVKbRMMmdEOpOck
 s8Ura0gTsIYgBDgsdVQBGsy2mOJ1PZEY2kpzCe/HBgKCsqbY48b+sOMJQWkuGWqBpGOP/kfnEmrkU
 OoPKM6xRWJBManOkC9V0eV7fDa+fADveXZMh9bOCfmmzDdLewrKzxshFlBL/gy5FpnjA=;
Received: from fout3-smtp.messagingengine.com ([103.168.172.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1saasy-0001Ei-6v for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Aug 2024 13:02:56 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfout.nyi.internal (Postfix) with ESMTP id 9FE011388027;
 Sun,  4 Aug 2024 09:02:45 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sun, 04 Aug 2024 09:02:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722776565; x=
 1722862965; bh=p2/8Uhv2yJT1ffx5iSM4w272zr0fR0S1Kk6bKcSHexE=; b=z
 5gvarZWqQrNiNMIo/CN1xbPcW5e+Nof6TdwEmjGNaGubH+PBYOfGMupzl/wkhUPz
 FbOGdR99Xa+oHlU2ht9dCkubTBZUTwoKR0qUpNfE86qSAPN5rLhqek7VPhlvOYeV
 ggdXepP04nnJ5FKgGBB4rE7U3gCeujoVXEOiI2WyI6F7k5z3s4nUrKoGtWZRtfJu
 lx86VSQO4GKtM8zhFvk35kaKZGAsVkaP6yX1J+X4B1MSS8T5ybVmRJnO7erkbf0z
 d5iF84buqWABw6ZIz8CZb8L/yDFQACtl6KrglcJ3M6e0IuADm9keIdJZ2gA7nfN7
 9C0kLOhEvtgS5m8TgCirw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722776565; x=
 1722862965; bh=p2/8Uhv2yJT1ffx5iSM4w272zr0fR0S1Kk6bKcSHexE=; b=b
 VxsJfQV5eZWeCL+YAhRC6p3WLoJx8ca8F/n/HSlFbrDmazLpKA6pb/Smsxt0SZ+l
 J5JsR2+F4fBegC/ZWpEjU0hW7BXGUVj0iidjPlu/ljLeubTXiRgzPP5XsMnVvFOZ
 3vLNurdKW+1HBP68TA34C3dFJ1wHKHSDLeONjKOPdSPI15U4o1N8d/GSSxmZnCzM
 VUPIW1UhlHtx3+3F942rcgIJY4wXTKPIm/HoaA/OAk0Oq3k0YQbewah4HuB7QVhG
 auuGweGuCcOjfeIcoXVom+Q/XJFhLegkkUIfe0h3kI/NZRAjwBuSebHR6UKlam9G
 e/z61NRnnYhW7ePBCARMQ==
X-ME-Sender: <xms:9XuvZi07DOjLFoeVhgni1Vqp1H7Qnlyt4Fh-b7k1mNRVpMTMsSdPPg>
 <xme:9XuvZlG80aXxLLu4y5vZxJO_e1skgg9Xb1hfrCQpc3D-lv3xmbPyEOr6M9wK_1Av8
 84Q4977zyJIENlpuB4>
X-ME-Received: <xmr:9XuvZq5MitkA2FLApNuhy1ocFnebq3uBq44sDQWlr3Y1MBrRBgBJqmdwt6bu0jeJYaYvvx1tlvHMWnCx0Y_jU1KDWKJT5_KbKJRlkJ_La8G_7A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeeggdehlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgepudenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:9XuvZj1mErpqrhVRQQmMekHORShOeJgmrHP188xMCxLH15w422lnEg>
 <xmx:9XuvZlEaMCRfXwCKoytHdESd0KcvaRNFAUq9K5o9qfnK4CX6S6pAoA>
 <xmx:9XuvZs-WsqFKB_HPI01NCQNKB1fo6YSnMj9SwJ_aM1zAv74_tU0BjQ>
 <xmx:9XuvZqnB-Ueh8htH-g2h6HVJYRP5Wfo0DPmhwLYLPu7Up0BfnqeQ0w>
 <xmx:9XuvZqTAC2TYn5OKEcroyHzk_puqXOT60A1C1_XOjToPg4SLSQvYJqZF>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 4 Aug 2024 09:02:44 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 12/17] firewire: core: use guard macro to maintain list of
 receivers for phy configuration packets
Date: Sun,  4 Aug 2024 22:02:19 +0900
Message-ID: <20240804130225.243496-13-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240804130225.243496-1-o-takashi@sakamocchi.jp>
References: <20240804130225.243496-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The core function maintains clients to receive phy
 configuration
 packets by list in the instance of fw_card. The concurrent access to the
 list is protected by spinlock in the instance. This commit uses guard macro
 to maintain the list. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.146 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.146 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.146 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1saasy-0001Ei-6v
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

The core function maintains clients to receive phy configuration packets
by list in the instance of fw_card. The concurrent access to the list is
protected by spinlock in the instance.

This commit uses guard macro to maintain the list.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 17 +++++------------
 1 file changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index ac6f9ad9e88e..f32f8667ef2c 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -1659,26 +1659,22 @@ static int ioctl_receive_phy_packets(struct client *client, union ioctl_arg *arg
 	if (!client->device->is_local)
 		return -ENOSYS;
 
-	spin_lock_irq(&card->lock);
+	guard(spinlock_irq)(&card->lock);
 
 	list_move_tail(&client->phy_receiver_link, &card->phy_receiver_list);
 	client->phy_receiver_closure = a->closure;
 
-	spin_unlock_irq(&card->lock);
-
 	return 0;
 }
 
 void fw_cdev_handle_phy_packet(struct fw_card *card, struct fw_packet *p)
 {
 	struct client *client;
-	struct inbound_phy_packet_event *e;
-	unsigned long flags;
 
-	spin_lock_irqsave(&card->lock, flags);
+	guard(spinlock_irqsave)(&card->lock);
 
 	list_for_each_entry(client, &card->phy_receiver_list, phy_receiver_link) {
-		e = kmalloc(sizeof(*e) + 8, GFP_ATOMIC);
+		struct inbound_phy_packet_event *e = kmalloc(sizeof(*e) + 8, GFP_ATOMIC);
 		if (e == NULL)
 			break;
 
@@ -1706,8 +1702,6 @@ void fw_cdev_handle_phy_packet(struct fw_card *card, struct fw_packet *p)
 			queue_event(client, &e->event, &e->phy_packet, sizeof(*pp) + 8, NULL, 0);
 		}
 	}
-
-	spin_unlock_irqrestore(&card->lock, flags);
 }
 
 static int (* const ioctl_handlers[])(struct client *, union ioctl_arg *) = {
@@ -1855,9 +1849,8 @@ static int fw_device_op_release(struct inode *inode, struct file *file)
 	struct client *client = file->private_data;
 	struct event *event, *next_event;
 
-	spin_lock_irq(&client->device->card->lock);
-	list_del(&client->phy_receiver_link);
-	spin_unlock_irq(&client->device->card->lock);
+	scoped_guard(spinlock_irq, &client->device->card->lock)
+		list_del(&client->phy_receiver_link);
 
 	scoped_guard(mutex, &client->device->client_list_mutex)
 		list_del(&client->link);
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
