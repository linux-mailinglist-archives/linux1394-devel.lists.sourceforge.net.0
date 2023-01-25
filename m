Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8026767B23D
	for <lists+linux1394-devel@lfdr.de>; Wed, 25 Jan 2023 13:03:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1pKeV8-0006xd-Gv;
	Wed, 25 Jan 2023 12:03:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1pKeV3-0006ws-9b
 for linux1394-devel@lists.sourceforge.net;
 Wed, 25 Jan 2023 12:03:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ahqs1LYctapqd3obfcgxXTbiu9HxxUAsecH2A0pcwOo=; b=IH2RXzS95zzkqSRubAcatsHaSg
 qLNdNEmTHkPBz8hP8OcHDOK6bYQXZnBMOO1XimuRPQl84BH73H7uFQ9HHGLI+lBkFQXz8UYlvB7y6
 PR4y1O2dlE8FV3qpO9N7OjWdxz00fAF43eVOrX4YAUTUKCxtEU0PXTkzjMFLh42ZFywE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ahqs1LYctapqd3obfcgxXTbiu9HxxUAsecH2A0pcwOo=; b=HVOF5qPDIhQhVCrLQw1zNDsR23
 s63OBO2A8UxKp6ZZ+t747D/v8w8YdmODdD3qmoEp+mqcb8+BarTS5qsTSMGH4N08N0QNhsUw2dIdg
 pBWJVZ5g/2/oYr1pgRH6138nr5vcTg3bNN+tNFAyzKDkiS/U0PoU7c7as1Cp0wDNAtIU=;
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pKeV1-00088x-Kw for linux1394-devel@lists.sourceforge.net;
 Wed, 25 Jan 2023 12:03:32 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 86B245C01B7;
 Wed, 25 Jan 2023 07:03:20 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 25 Jan 2023 07:03:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm3; t=1674648200; x=
 1674734600; bh=ahqs1LYctapqd3obfcgxXTbiu9HxxUAsecH2A0pcwOo=; b=H
 xHPjCINz7UPVaQ0a70ohdvxAVldZo4NeDXnkFV8L/TKVi0VChMCZiSaBtMjJUB5c
 oWWarWJx5zyU8JCZBz+4Wt3q4mn0xKN7TMTgp8d/kZ3SHum1qX9NmrI/GDM9/0aA
 dOX6MVj3M4xkmmVuj5cB1BMbhQ01/9ZhMQLInuS3eapN0EoflSbd2IHb7E4wVB6D
 wnv1KhDBz4+gJ6tK6PowDL5tz2G5g/qbQghMw0d3K6M2Gy38T2zVArn8MCEyLo5g
 CLFhVh9c7zs6WHMOOya2DP/BhKHLsHIfVst3brfhQwAHUK3bauSW+5WREKqQktDu
 7VxVqopty9hAvjwnncFCQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; t=1674648200; x=1674734600; bh=ahqs1LYctapqd
 3obfcgxXTbiu9HxxUAsecH2A0pcwOo=; b=X0iMZwkCCyaKwV2nIbcITALUnh9mj
 eblsuVBDZXJM/jTI3t2JqL0YEnU0O5QpQsECPUsUp8SpDYr8O87i0kLkbDMZdD4Y
 3iKwc4sAiLjgFHNXMS/L4FWVwc071RI7R3ympFypAqvtNK9AcEuTNBCrlnFiRe8a
 N30nDxfqRGQYSl/d9nKygKV99dv8znjJ54JugPu7d92d5KRU/a2A15JWiHzSRdl0
 2WMtAxGwhCFQGUJXin55vql3luE9hd6PtuBXxKqGRxzIwgGE9BXxOr+GNK1P5dJJ
 xku8omaZ3V6PXvE9vdnACnX1jz0w01crxJ5e07bRWfKF6qiLB/bW+RQJQ==
X-ME-Sender: <xms:iBrRY23H6A_arJ90EeXijcICCPfa5kQKzmmuJIZTZHa18hpyQFLwDg>
 <xme:iBrRY5Hzuo9qoix3fs6RXB_InArn1hZXoOIi4IyVZWFtYlCJ1K1re1AT0Ie-QGeee
 TViwNSGu3_qx_cHp_k>
X-ME-Received: <xmr:iBrRY-5SemgeB7X4OmncMw8QkaTidPyGUmPzK-uiymhNdbzFf2iH7uVnvXXrUuxLIVMZZMbIp4Gku0OoCSD_-FUX9rP5PwoERDezHeEGY2mcHHzyVLljn0U>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedruddvvddgfeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedvnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:iBrRY32P4n7Qq3x105qQpcMNOVGS2snmkCaKl3MM8NxwsVTZX7U91A>
 <xmx:iBrRY5Eq4XxDHBDUTicRL6iU5RI6UUPTdeaoTx9icBsLK8G5s0iyDQ>
 <xmx:iBrRYw8CsPRrt2OCW7_JzrevganNdXzSVbZeMcpSF2enGuGgSgFvpw>
 <xmx:iBrRY-SYNuUIdhL-p2q2w39DJPUu2AhuKikCgjl2jPbhCbvbWLtZbQ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 25 Jan 2023 07:03:19 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: stefanr@s5r6.in-berlin.de
Subject: [PATCH 09/11] firewire: cdev: code refactoring to dispatch event for
 phy packet
Date: Wed, 25 Jan 2023 21:02:59 +0900
Message-Id: <20230125120301.51585-10-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230125120301.51585-1-o-takashi@sakamocchi.jp>
References: <20230125120301.51585-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In 1394 OHCI,
 both Asynchronous Transmit (AT) and Asynchronous
 Receive (AR) contexts are used to deliver the phy packet of IEEE 1394. The
 time stamp is available as well as the usual asynchronous tran [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [66.111.4.27 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pKeV1-00088x-Kw
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
Cc: tiwai@suse.de, linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

In 1394 OHCI, both Asynchronous Transmit (AT) and Asynchronous Receive
(AR) contexts are used to deliver the phy packet of IEEE 1394. The time
stamp is available as well as the usual asynchronous transaction.

This commit is a preparation for future commit to handle the time stamp.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 78 +++++++++++++++++++++++-------------
 1 file changed, 51 insertions(+), 27 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 8b24abdd51b8..2220de3c945e 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -204,12 +204,16 @@ struct outbound_phy_packet_event {
 	struct event event;
 	struct client *client;
 	struct fw_packet p;
-	struct fw_cdev_event_phy_packet phy_packet;
+	union {
+		struct fw_cdev_event_phy_packet without_tstamp;
+	} phy_packet;
 };
 
 struct inbound_phy_packet_event {
 	struct event event;
-	struct fw_cdev_event_phy_packet phy_packet;
+	union {
+		struct fw_cdev_event_phy_packet without_tstamp;
+	} phy_packet;
 };
 
 #ifdef CONFIG_COMPAT
@@ -1549,26 +1553,41 @@ static void outbound_phy_packet_callback(struct fw_packet *packet,
 {
 	struct outbound_phy_packet_event *e =
 		container_of(packet, struct outbound_phy_packet_event, p);
-	struct client *e_client;
+	struct client *e_client = e->client;
+	u32 rcode;
+	struct fw_cdev_event_phy_packet *pp;
 
 	switch (status) {
-	/* expected: */
-	case ACK_COMPLETE:	e->phy_packet.rcode = RCODE_COMPLETE;	break;
-	/* should never happen with PHY packets: */
-	case ACK_PENDING:	e->phy_packet.rcode = RCODE_COMPLETE;	break;
+	// expected:
+	case ACK_COMPLETE:
+		rcode = RCODE_COMPLETE;
+		break;
+	// should never happen with PHY packets:
+	case ACK_PENDING:
+		rcode = RCODE_COMPLETE;
+		break;
 	case ACK_BUSY_X:
 	case ACK_BUSY_A:
-	case ACK_BUSY_B:	e->phy_packet.rcode = RCODE_BUSY;	break;
-	case ACK_DATA_ERROR:	e->phy_packet.rcode = RCODE_DATA_ERROR;	break;
-	case ACK_TYPE_ERROR:	e->phy_packet.rcode = RCODE_TYPE_ERROR;	break;
-	/* stale generation; cancelled; on certain controllers: no ack */
-	default:		e->phy_packet.rcode = status;		break;
+	case ACK_BUSY_B:
+		rcode = RCODE_BUSY;
+		break;
+	case ACK_DATA_ERROR:
+		rcode = RCODE_DATA_ERROR;
+		break;
+	case ACK_TYPE_ERROR:
+		rcode = RCODE_TYPE_ERROR;
+		break;
+	// stale generation; cancelled; on certain controllers: no ack
+	default:
+		rcode = status;
+		break;
 	}
-	e->phy_packet.data[0] = packet->timestamp;
 
-	e_client = e->client;
-	queue_event(e->client, &e->event, &e->phy_packet,
-		    sizeof(e->phy_packet) + e->phy_packet.length, NULL, 0);
+	pp = &e->phy_packet.without_tstamp;
+	pp->rcode = rcode;
+	pp->data[0] = packet->timestamp;
+	queue_event(e->client, &e->event, &e->phy_packet, sizeof(*pp) + pp->length, NULL, 0);
+
 	client_put(e_client);
 }
 
@@ -1577,6 +1596,7 @@ static int ioctl_send_phy_packet(struct client *client, union ioctl_arg *arg)
 	struct fw_cdev_send_phy_packet *a = &arg->send_phy_packet;
 	struct fw_card *card = client->device->card;
 	struct outbound_phy_packet_event *e;
+	struct fw_cdev_event_phy_packet *pp;
 
 	/* Access policy: Allow this ioctl only on local nodes' device files. */
 	if (!client->device->is_local)
@@ -1595,10 +1615,12 @@ static int ioctl_send_phy_packet(struct client *client, union ioctl_arg *arg)
 	e->p.header[2]		= a->data[1];
 	e->p.header_length	= 12;
 	e->p.callback		= outbound_phy_packet_callback;
-	e->phy_packet.closure	= a->closure;
-	e->phy_packet.type	= FW_CDEV_EVENT_PHY_PACKET_SENT;
+
+	pp = &e->phy_packet.without_tstamp;
+	pp->closure = a->closure;
+	pp->type = FW_CDEV_EVENT_PHY_PACKET_SENT;
 	if (is_ping_packet(a->data))
-			e->phy_packet.length = 4;
+		pp->length = 4;
 
 	card->driver->send_request(card, &e->p);
 
@@ -1633,18 +1655,20 @@ void fw_cdev_handle_phy_packet(struct fw_card *card, struct fw_packet *p)
 	spin_lock_irqsave(&card->lock, flags);
 
 	list_for_each_entry(client, &card->phy_receiver_list, phy_receiver_link) {
+		struct fw_cdev_event_phy_packet *pp;
+
 		e = kmalloc(sizeof(*e) + 8, GFP_ATOMIC);
 		if (e == NULL)
 			break;
 
-		e->phy_packet.closure	= client->phy_receiver_closure;
-		e->phy_packet.type	= FW_CDEV_EVENT_PHY_PACKET_RECEIVED;
-		e->phy_packet.rcode	= RCODE_COMPLETE;
-		e->phy_packet.length	= 8;
-		e->phy_packet.data[0]	= p->header[1];
-		e->phy_packet.data[1]	= p->header[2];
-		queue_event(client, &e->event,
-			    &e->phy_packet, sizeof(e->phy_packet) + 8, NULL, 0);
+		pp = &e->phy_packet.without_tstamp;
+		pp->closure = client->phy_receiver_closure;
+		pp->type = FW_CDEV_EVENT_PHY_PACKET_RECEIVED;
+		pp->rcode = RCODE_COMPLETE;
+		pp->length = 8;
+		pp->data[0] = p->header[1];
+		pp->data[1] = p->header[2];
+		queue_event(client, &e->event, &e->phy_packet, sizeof(*pp) + 8, NULL, 0);
 	}
 
 	spin_unlock_irqrestore(&card->lock, flags);
-- 
2.37.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
