Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2869C93F6F2
	for <lists+linux1394-devel@lfdr.de>; Mon, 29 Jul 2024 15:46:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sYQi7-0001JJ-Ep;
	Mon, 29 Jul 2024 13:46:46 +0000
Received: from [172.30.29.67] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sYQi6-0001JA-2s
 for linux1394-devel@lists.sourceforge.net;
 Mon, 29 Jul 2024 13:46:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0tCtpGDits0Hy6LBmFMD6VZ1iHyJ5l1QnaLH/UD29/k=; b=m9h6he3tJ541tdWrALnxfSOrto
 0Joc36M7b8gAWQLl2O523siV6V/7VCic6Es/tycrpiuA2NXXnXE7PdHHL44z6CjJkldBdCyUOFnjj
 IIX1iG6rFhh/6OALZhja0kntLdBe6EFgoMZpYsQSezjtv3v2E4Qhk7mdpqdWqSijDUWA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0tCtpGDits0Hy6LBmFMD6VZ1iHyJ5l1QnaLH/UD29/k=; b=IlsQJktPnRG+3ZQT4OqYHmLnh8
 nqJ57rhmpp/+G0BDG5BkiXYAOVLDHOEQKG0JrW0oTh74Azp+2EmbdX6KVoEr0e+RBpp51Bx0tTAd7
 iROSHSKY5TdA8qb4uTgwRcDRf2FutDLjstJTRak2/J3IFj8zBIeLjl0qom6lvCYO9Efo=;
Received: from fout2-smtp.messagingengine.com ([103.168.172.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sYQi4-0000LJ-1E for linux1394-devel@lists.sourceforge.net;
 Mon, 29 Jul 2024 13:46:45 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfout.nyi.internal (Postfix) with ESMTP id BE7F4138024B;
 Mon, 29 Jul 2024 09:46:37 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 29 Jul 2024 09:46:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722260797; x=
 1722347197; bh=0tCtpGDits0Hy6LBmFMD6VZ1iHyJ5l1QnaLH/UD29/k=; b=y
 99smwt9JmjhgMnlVL0mX3UavIs0EqLsO8Ir4I8v6HMWqSVidXnumw0ElbvxU9uDy
 OmY+8Y2dLf9GUQtK4hczBlcz/9cKAVKQl/+d3nYs+B3emXtMxLSUjIfIDzRbh0J7
 aof9Bgh3kTvf6iR2H2aWb1HTqVEgq+vg2x5nTpooxC6X9aHtP4v+XTksobe45Qps
 4IET+D25FfPmzbQQRkBAd0XE/JW11kK1zxngIB/OJwGuc6fV37wjA8b+c9jMS1s7
 ERqYScB58KPoyGqSg2JLP1M8qNu74RqOhzw6oPBEBtx3WYj3nF6eLGfoyPkp+DBj
 r4ARu2tF5ECgDjII0Z/pQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722260797; x=
 1722347197; bh=0tCtpGDits0Hy6LBmFMD6VZ1iHyJ5l1QnaLH/UD29/k=; b=A
 CKdFaWwi9mt+gPufPW0fj9/kIF+HwjSTqqFvhT7NnlQxlFt8wSJAy39b11QzWcno
 W8D9vZHz+qtJkZs1E76KjqEOgxEuZAl4AcePtY9ivzMy6kugPWnR9EfgIh/xxmTJ
 wEjrVVzDBM47rIPqc4zm8l8tXrOE0zzXeQkF0QlufvX5tqM6UVKeZFDBcYvzSWi2
 C74dHwXI07a9ZobttKa65w6ooHrHLB+QeYu0fICDCv3HdIlWcrGJAV5suREOZrhQ
 Ry0+7/eaTVAmrKHnrpbuEu+yNTe2KI+Dcj+aAm+hDCvK7kLeI5uG20o0d8RBMUZp
 dLxItVWlIvGsvVSQEjBQQ==
X-ME-Sender: <xms:PZ2nZk-i5moP1RPA8OdFPtJ3qNbRZ8-VrZeNb398fhD6QP4V5Puj7Q>
 <xme:PZ2nZssx0CRE9WsuTS7Kq5VPaY2u6gqaw75yHvgOVqr2q29Wii90TIiQ4FsB-59uH
 nKrhicGy_o1u357Gaw>
X-ME-Received: <xmr:PZ2nZqDt5aHRgxA3SkBPAO3kl54Jv0VKwDOQDb9pm1zK__nsID_RJ0IZsr50TFmeIAKf_gjw8SfKGxvw56ElprLrhO6KkDssngfwGUGrRpR2iVQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrjedvgdeilecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:PZ2nZkdZx5bPoipxvtnP0Gs8tG3awXQZgRMFZpIdHG6WpX0tT6I8xw>
 <xmx:PZ2nZpORzmjkKZZ-CsSy1SferDZRwG7OQWmJeFyeA2dC65I-Rq1P8Q>
 <xmx:PZ2nZumpKGXVmZ24NZn-1b2cqL0Sz80fRwB84fhqxCpsBPdNhSNvnA>
 <xmx:PZ2nZrs_Yb52jh7gg4GeVR75CDQXR2_JQ4O6SizkWndUcU1NAr-h0g>
 <xmx:PZ2nZiYeFeMK1f429uSTtjoPZne4N27cUOfqGiiEXCM-59FrawgEJAy8>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 29 Jul 2024 09:46:36 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 1/3] firewire: ohci: use TCODE_LINK_INTERNAL consistently
Date: Mon, 29 Jul 2024 22:46:29 +0900
Message-ID: <20240729134631.127189-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240729134631.127189-1-o-takashi@sakamocchi.jp>
References: <20240729134631.127189-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In IEEE 1394 specification, 0x0e in tcode field is reserved
 for internal purpose depending on link layer. In 1394 OHCI specification,
 it is used to express phy packet in AT/AR contexts. Current implementation
 of 1394 OHCI driver has several macros for the code. They can be simply
 replaced with a macro in core code. 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.145 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.145 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.145 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.145 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sYQi4-0000LJ-1E
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

In IEEE 1394 specification, 0x0e in tcode field is reserved for internal
purpose depending on link layer. In 1394 OHCI specification, it is used to
express phy packet in AT/AR contexts.

Current implementation of 1394 OHCI driver has several macros for the code.
They can be simply replaced with a macro in core code.

This commit obsoletes the macros.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 9 ++++-----
 drivers/firewire/ohci.h | 1 -
 2 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 314a29c0fd3e..c3fff94b13e5 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -264,7 +264,6 @@ static inline struct fw_ohci *fw_ohci(struct fw_card *card)
 #define OHCI1394_REGISTER_SIZE		0x800
 #define OHCI1394_PCI_HCI_Control	0x40
 #define SELF_ID_BUF_SIZE		0x800
-#define OHCI_TCODE_PHY_PACKET		0x0e
 #define OHCI_VERSION_1_1		0x010010
 
 static char ohci_driver_name[] = KBUILD_MODNAME;
@@ -586,7 +585,7 @@ static void log_ar_at_event(struct fw_ohci *ohci,
 		ohci_notice(ohci, "A%c %s, %s\n",
 			    dir, evts[evt], tcodes[tcode]);
 		break;
-	case 0xe:
+	case TCODE_LINK_INTERNAL:
 		ohci_notice(ohci, "A%c %s, PHY %08x %08x\n",
 			    dir, evts[evt], header[1], header[2]);
 		break;
@@ -939,7 +938,7 @@ static __le32 *handle_ar_packet(struct ar_context *ctx, __le32 *buffer)
 
 	case TCODE_WRITE_RESPONSE:
 	case TCODE_READ_QUADLET_REQUEST:
-	case OHCI_TCODE_PHY_PACKET:
+	case TCODE_LINK_INTERNAL:
 		p.header_length = 12;
 		p.payload_length = 0;
 		break;
@@ -967,7 +966,7 @@ static __le32 *handle_ar_packet(struct ar_context *ctx, __le32 *buffer)
 	 * Several controllers, notably from NEC and VIA, forget to
 	 * write ack_complete status at PHY packet reception.
 	 */
-	if (evt == OHCI1394_evt_no_status && tcode == OHCI1394_phy_tcode)
+	if (evt == OHCI1394_evt_no_status && tcode == TCODE_LINK_INTERNAL)
 		p.ack = ACK_COMPLETE;
 
 	/*
@@ -1435,7 +1434,7 @@ static int at_context_queue_packet(struct context *ctx,
 		break;
 
 	case TCODE_LINK_INTERNAL:
-		header[0] = cpu_to_le32((OHCI1394_phy_tcode << 4) |
+		header[0] = cpu_to_le32((TCODE_LINK_INTERNAL << 4) |
 					(packet->speed << 16));
 		header[1] = cpu_to_le32(packet->header[1]);
 		header[2] = cpu_to_le32(packet->header[2]);
diff --git a/drivers/firewire/ohci.h b/drivers/firewire/ohci.h
index 71c2ed84cafb..9ed36cfc6cae 100644
--- a/drivers/firewire/ohci.h
+++ b/drivers/firewire/ohci.h
@@ -153,7 +153,6 @@
 #define OHCI1394_evt_unknown		0xe
 #define OHCI1394_evt_flushed		0xf
 
-#define OHCI1394_phy_tcode		0xe
 
 // Self-ID DMA.
 
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
