Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8099477A6
	for <lists+linux1394-devel@lfdr.de>; Mon,  5 Aug 2024 10:54:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1satUJ-0005Jr-CG;
	Mon, 05 Aug 2024 08:54:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1satUF-0005Ib-B4
 for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=p2/8Uhv2yJT1ffx5iSM4w272zr0fR0S1Kk6bKcSHexE=; b=NpXR4hOWCTcTUiwqlwRoV3GwBF
 /5w88sCcMSjVPxDsGMBnm9l3Jva5LlkmjUDC8IvNFrpzCnuXzd/gIdfX5Dxa/eHRiZm6z5zngj0mq
 vskSBWIXUacJpo2+D07taLov4P8zdL8D89wij5inqq62VyXWDmEU0cuHYtY2+zKCUB3Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=p2/8Uhv2yJT1ffx5iSM4w272zr0fR0S1Kk6bKcSHexE=; b=h0Ym2YN1/Dx63kn58xXyba+E14
 QJj+la+PtsWUmwDlMdQqjrGs3dxHzVBDv+xH+pwb+cUe/iDI1eqZQUB3TLdNl0xCIy0SxaPpgxC8O
 974LnQ2qHduUTNn8r+YzZOlPJjzK8DIDSXS8UcOstYtcRt8s8CkNa/IzW6ECBY3QjuO8=;
Received: from fout7-smtp.messagingengine.com ([103.168.172.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1satUE-0002sm-Kj for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:39 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfout.nyi.internal (Postfix) with ESMTP id 14303138FDDD;
 Mon,  5 Aug 2024 04:54:28 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Mon, 05 Aug 2024 04:54:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722848068; x=
 1722934468; bh=p2/8Uhv2yJT1ffx5iSM4w272zr0fR0S1Kk6bKcSHexE=; b=E
 6LNQtp5AStedNJslYJ4QMrYROoXOrV+Flv4uwvtC2l3JkgAAkNL8zaGxbO8hxayf
 TAz5JOVl6STAWdeRWk1UZCBolgvOaDKTuUx/lGuqrP+kB286mrAavMHW/CTEVVRp
 NgcCa3P7dofnCI4JNwmFPkAvxBxm+I8T3j/1n44Vu509utHXOsPpC8x9+MWYgl9v
 xnvtv51akvF8xBl6XSE5yF6xNh7fARtgBLXIUkts3LpfJXqoUyE3m3OLKfm8LhB9
 IFl/eJ6nAr6COqAFwhMNnRtfCWbjK4dc8FpBKS6c2+SiLIMAN6KSCo/CrvTGlxZk
 WUxFAsH4aG8i5JAqqwY2w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722848068; x=
 1722934468; bh=p2/8Uhv2yJT1ffx5iSM4w272zr0fR0S1Kk6bKcSHexE=; b=p
 6wXme3mvRSKs/ieLIGIZpKQ4z9pJ3xRXwkRDazw2Qsl9lQ4MzHAZ8HgDNrJo4aJR
 bY8QM3iqnyq5zyru6cMDgdLx2YMYfF9SyjWmbOj2qmAecNGguXMErZtgXX+0Jn5/
 lI79F0ir99irRKb41UnFxhNmR4oCBmVdLBf/SfBcVrqzN1EDKcNnjVG6SQDTUKKR
 fcbBjrShhwVAzkfq6wkwS7zOq09ksmc6dh1Wb4DrMKWu0mwUy/gQYj5I1/wgEo7O
 Qu75g0BLE8eqMtJXiNoDHjUIj5xYi63FumXvCtqIkoRGqPWQBSxclw9DiBQyeQK5
 BzZ1oeqMHkcDo9ObVdI+w==
X-ME-Sender: <xms:Q5OwZoTHFBL5JProeXDnh2pwk62F1KauyeT0dB64ES5ZJ268LWzjpg>
 <xme:Q5OwZlynvwvaYTofN50f-5wn9HsGXPJRJEsyE0jJ3Jt7b7LP6henRVzuWHWc2rhc0
 ykTIWEESaQpKpI60Fw>
X-ME-Received: <xmr:Q5OwZl1CJznQym4rt1kVAmi5wjW_0GTc1-veI-w-BoCw-EFyALQGPTmFZihon-5xBuMOOyo_kqSbBOQx04oh6eQRdoBId_43PGsHxxUom6A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeeigddutdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:Q5OwZsA79rMZssWbEqIbXbce4xptEClZMJ2aBXje8qZ0lNmiuSDF0w>
 <xmx:Q5OwZhi1yaqQA7yu0eSgTSQwk49H5mFxob6tQ9ye6expVGYXE-nEUA>
 <xmx:Q5OwZopHnDPmqN1UwuJoI9VDXyPUqgwYDWH6_bILMl81Q5t1u1ScJQ>
 <xmx:Q5OwZkgDpnPuFo5WaRXhmheCjHTjT2hwTiufCeoa1ahkNzcTjeua1g>
 <xmx:RJOwZktNvRwctV22MFwFyXwtZ26RcHc7GYx_zADYmokry-wAH1l2lzyK>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 5 Aug 2024 04:54:26 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2 12/17] firewire: core: use guard macro to maintain list of
 receivers for phy configuration packets
Date: Mon,  5 Aug 2024 17:54:03 +0900
Message-ID: <20240805085408.251763-13-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
References: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
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
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.150 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.150 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.150 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1satUE-0002sm-Kj
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
