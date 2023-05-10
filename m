Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E12456FD40E
	for <lists+linux1394-devel@lfdr.de>; Wed, 10 May 2023 05:12:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1pwaFY-00068E-C2;
	Wed, 10 May 2023 03:12:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1pwaFW-000685-V4
 for linux1394-devel@lists.sourceforge.net;
 Wed, 10 May 2023 03:12:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FWq0bO+HBMIGxKbDQUC/QIXBRYZ2XFe4HmtHpRUs/II=; b=H94CKTeuEta80jcuAUpoTUZxT2
 QRm3M6cg+2bW1sLkhIxRlN1zEfz/qukpczpu4IJ6rZpF4/6O0ANnN0yQllxd8oIAouvSwbNhDwOsx
 FH9Kyct1RdmFMmWoU9g7NwmDdXzoIVHpZVNxQsw0MnjUrHBJgbJDwmZWJnwQZR5VjUxI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=FWq0bO+HBMIGxKbDQUC/QIXBRYZ2XFe4HmtHpRUs/II=; b=O
 fQljb7dCwj5lyX2wFBORDjF4DjxXdawlE0I+UWZsJHb+l+pyVxFPYAF/UPkvAVcIdSFQ+E6qENiWe
 KyBBZRkV0GJ5uGdXbrOGgFySDVS9qewCzI3XeMt/5yEiuJ7wD33TG8Te0gmPYSQ0KbtW0VUhK2psk
 y4G6Y1tLtXiVUKGU=;
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pwaFV-001kNL-Lu for linux1394-devel@lists.sourceforge.net;
 Wed, 10 May 2023 03:12:18 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id 2E7BE3200681;
 Tue,  9 May 2023 23:12:10 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Tue, 09 May 2023 23:12:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:sender
 :subject:subject:to:to; s=fm3; t=1683688329; x=1683774729; bh=FW
 q0bO+HBMIGxKbDQUC/QIXBRYZ2XFe4HmtHpRUs/II=; b=Bh59Hc2K8PysbgyxI0
 EvRTNZFIlWk0w2oN/TclV1IvNDcaPy92XeTSPgAdezs/Tvj89eKSRH/lML4eZzct
 t2lo+YPy82NVF2xz29ihjPpfYeb9kdEdtReFTluWTQ91fVTO05cRi61FT49XhlGc
 lqvgyXUTUHQtO01JuPk+4Q48sZiclo5hicCEaMQ2Fn9fZNzRD4o52jpAcR1l5h1v
 gMcroEKzXk3NJyS96X3G2s9nrg2QRKzHW3F9hNWaM0Xdfzs2fut4XkIKuh12IBkF
 bh8bJiTLAERbzAZI5bNrFR3SP+9zviOvTS83J0QKvDKMQWaOrvVOpKGoLDt7Fzwh
 CY/w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; t=1683688329; x=1683774729; bh=FWq0bO+HBMIGx
 KbDQUC/QIXBRYZ2XFe4HmtHpRUs/II=; b=GGDUaaceGUMTD8NLXmAy7ETWPcAat
 GZyorV3TjVQ1LNRsZhfHxmg+l+1/EJ082WgGBYKlCvweaJRA+TkC1bx2DIWtE0xT
 aeqRc7PLUh0Beh6yHwuFXVJ2bOWzcR+WMkW+ja16La1fJsTd/WhXPMiK3+U9Pajy
 KWQuVM6zVD4bczknLUDwLD2MNCbHNwKBuVhfJYHq9AAkh14URaWVeFKe9S4YNDIW
 sb0g5sspjVIuE6xP9DbpMOgYJCxw0zPtfthKea4YYTaIntTDeW+P4dqY6oxy7WnZ
 NAzdtDpO9vrv9ZZUP2GSa0XTcAbfqiO6ZTm/zT/y3KjUK3ukm7r6gB1Hw==
X-ME-Sender: <xms:iQtbZF485CbWby7MxS4AdtcSXrs7l09bpatA-inX2cGiq1u0Tc7xIQ>
 <xme:iQtbZC5ECBDpZqD0O5UEDSsgujVBNne0eVgfaoyTNkH5iJrBfI9hnlU3YhShMPEZx
 QmD2pnHNzWlOaDJb0A>
X-ME-Received: <xmr:iQtbZMezjvbDC9KhkmZmaLQWULHnh3KVKTphPlEgOS45k_eBSkn9pbcZC9JhxZeu9SMvuxM-SburY8JfjcNkCa1RprBHpHFnS3PSJTAfdxd3>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeegvddgieekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeeggfehleehje
 eileehveefkefhtdeffedtfeeghfekffetudevjeegkeevhfdvueenucffohhmrghinhep
 khgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
 hilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:iQtbZOLBnsJC_5YWjDxOgj7w4kcxugo_hPanmenvYKyfUAJbn0_eeQ>
 <xmx:iQtbZJJdZXQrryqVpAYzfOPSmCGAHWkjxzf_7Rw8palr4k_IJqswZA>
 <xmx:iQtbZHyfuADd7_x5WNhmtY2eXDV5IWqkNiziCVg00th616XsbsWEHA>
 <xmx:iQtbZHhn4y8v8-c5JCAfc85BLe-prDb7cLUdrOhp9zBR9VlX0FWXvw>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 9 May 2023 23:12:08 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH] firewire: net: fix unexpected release of object for
 asynchronous request packet
Date: Wed, 10 May 2023 12:12:05 +0900
Message-Id: <20230510031205.782032-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The lifetime of object for asynchronous request packet is
 now maintained by reference counting,
 while current implementation of firewire-net
 releases the passed object in the handler. This commit fixes the bug. 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.21 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1pwaFV-001kNL-Lu
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
Cc: Dan Carpenter <error27@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

The lifetime of object for asynchronous request packet is now maintained
by reference counting, while current implementation of firewire-net
releases the passed object in the handler.

This commit fixes the bug.

Reported-by: Dan Carpenter <error27@gmail.com>
Link: https://lore.kernel.org/lkml/Y%2Fymx6WZIAlrtjLc@workstation/
Fixes: 13a55d6bb15f ("firewire: core: use kref structure to maintain lifetime of data for fw_request structure")
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/net.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/firewire/net.c b/drivers/firewire/net.c
index af22be84034b..538bd677c254 100644
--- a/drivers/firewire/net.c
+++ b/drivers/firewire/net.c
@@ -706,21 +706,22 @@ static void fwnet_receive_packet(struct fw_card *card, struct fw_request *r,
 	int rcode;
 
 	if (destination == IEEE1394_ALL_NODES) {
-		kfree(r);
-
-		return;
-	}
-
-	if (offset != dev->handler.offset)
+		// Although the response to the broadcast packet is not necessarily required, the
+		// fw_send_response() function should still be called to maintain the reference
+		// counting of the object. In the case, the call of function just releases the
+		// object as a result to decrease the reference counting.
+		rcode = RCODE_COMPLETE;
+	} else if (offset != dev->handler.offset) {
 		rcode = RCODE_ADDRESS_ERROR;
-	else if (tcode != TCODE_WRITE_BLOCK_REQUEST)
+	} else if (tcode != TCODE_WRITE_BLOCK_REQUEST) {
 		rcode = RCODE_TYPE_ERROR;
-	else if (fwnet_incoming_packet(dev, payload, length,
-				       source, generation, false) != 0) {
+	} else if (fwnet_incoming_packet(dev, payload, length,
+					 source, generation, false) != 0) {
 		dev_err(&dev->netdev->dev, "incoming packet failure\n");
 		rcode = RCODE_CONFLICT_ERROR;
-	} else
+	} else {
 		rcode = RCODE_COMPLETE;
+	}
 
 	fw_send_response(card, r, rcode);
 }
-- 
2.37.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
