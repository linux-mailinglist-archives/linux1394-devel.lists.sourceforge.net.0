Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 302E28B4A60
	for <lists+linux1394-devel@lfdr.de>; Sun, 28 Apr 2024 09:14:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s0yjh-0002Pl-By;
	Sun, 28 Apr 2024 07:14:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s0yje-0002Li-EL
 for linux1394-devel@lists.sourceforge.net;
 Sun, 28 Apr 2024 07:14:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=470UmX6MvxsOpPDrhAZoiwlvja/CUYrvQC6qp4umF88=; b=d7kgCKQwNy7BsuvpefHheZ7dmN
 iMGQ1PJ8qnbF8P1usunMdq4WMi8y4op6MH9e7JguqHAgrqxBjpTDTiy1JN8GHAyA55CeaUlZQm/Ty
 HZQwCCnF6NNDHNs4wUBSH4quUtv9rEYde+o4X06SDIV2G+YV/OvoTTzpAGM0u68NHSBM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=470UmX6MvxsOpPDrhAZoiwlvja/CUYrvQC6qp4umF88=; b=V5qE0bttnyoUxL09IlwsEQgXSA
 SBLWYcvLAf91T86X1WIInVqAHhYBMZ5w6GUt878zvCIrz+QQWbn0BI86ZkJu76aZfBbUXpClCtIsN
 E2KtUIVm1VY7YwwLvg/M3DTm5eApzzQc+mMBOMxTtbQPiH7xsJaawB+fgExU9qRKrfac=;
Received: from wfout2-smtp.messagingengine.com ([64.147.123.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s0yjc-0000Gv-72 for linux1394-devel@lists.sourceforge.net;
 Sun, 28 Apr 2024 07:14:05 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfout.west.internal (Postfix) with ESMTP id 0C8C21C0010F;
 Sun, 28 Apr 2024 03:13:58 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sun, 28 Apr 2024 03:13:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1714288438; x=
 1714374838; bh=470UmX6MvxsOpPDrhAZoiwlvja/CUYrvQC6qp4umF88=; b=c
 oJi8ATkKxRWB8+w2DwpZlcoEDB6RAV47lw9TimBoY/5BRM0mAcj7Z+Ls4OGKEPg1
 FtH+y/A0wZ9WGpmN9bgFeKG2VYDS0fsBe0v5O3teqXhjePEk/s3B2hWpNyUHS7Lw
 ec/tnSOiAqIpWjjRomozS+7FyiH5s2DzF0AkiRMNLCI0oq7Y739i0xxHJmtT1kYX
 HRfoH8cCEG9ukH5bPHANrAjuUuWaiiDisZ3LIW+9Sf/CMdJny0zICBCQj91uVQEd
 iQW/DmruuxAYPCE6cgHXeebTQhCljLwchnypAsz1dOtoEFVbU88nWqEbSHmM6KzU
 6dmtZ4sNPvHI4KXTzoz/A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1714288438; x=
 1714374838; bh=470UmX6MvxsOpPDrhAZoiwlvja/CUYrvQC6qp4umF88=; b=Q
 YqOW+UwSpbxvF4GJPEJLGmuZgCYtQKx2+eV4U0RcRtJjmm1sDPzOryBG528sTwL3
 tpCVqvMPQt11n1jOli4MUYnt75+a/bgcFKmcHeHFi0fpyzN27E6StrMa4AWNuy3v
 dgIVUTCfnUNG4Zigtv2K9Ezj0VpdMl1k6p7GcYlPrgj/rfPmqhL701ftxbm7/UJ1
 KaDJXOQw+aVLAWyTxkoG3lObzo5T9ErDHWz9q8F2rQFJxUMHTDvWyS8ZeMb+ag4F
 tZKajJ6r+pAHYcB4VqswBijfPcS4jqVttW0/x14xu238oyBQljZtbATb+wf3CDAW
 7lePIYCzujjJWX1WAGG3w==
X-ME-Sender: <xms:NvctZkL406FmMZj0AN1sbTrPmm1wlxftArz_cOCKEAOpeEqO8iP1ng>
 <xme:NvctZkIcGrlRHYJD__r2IubrnpsbK3G9qTglfhtP3plEH0CutQ_w18jLfElKBzcdx
 o2lP5H3fm51SAV_Cqg>
X-ME-Received: <xmr:NvctZkusuYXcXv9ehHmr1QJk5Ooif72oiQkGJlbFsn1f3xPtXjb7nMVACbu4rJ0qGNlA-Ym8YmfX5n_h_C7VctK-W3dY9Gpl2--b5ghd7BxQIA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvddtgedgvddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:NvctZhYq4eSuIJjqv4xJpsIh6UfbhBEfoWgBxY3GZOU_Y_bZa5cvgA>
 <xmx:NvctZrZzOtylvQkucN4s9aPUgYHpHb5Uu0E_ccpuZ6jxA1f3ui4lEw>
 <xmx:NvctZtBkh0m6u4Wm9R8sKIWSLjC-xprZttAqBIX2RGVUXWoHoyjvyw>
 <xmx:NvctZhZelrWyBmxwmv630kHxPNNPIgdyx1RdUYxKWXHOZHibQXrcpw>
 <xmx:NvctZqkBgDEq-o3nX7pig0D_zeKsj3jIw1FYqMWeccE3ppFXljfDOpe5>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 28 Apr 2024 03:13:57 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 3/8] firewire: ohci: replace local macros with common inline
 functions for asynchronous packet header
Date: Sun, 28 Apr 2024 16:13:41 +0900
Message-ID: <20240428071347.409202-4-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240428071347.409202-1-o-takashi@sakamocchi.jp>
References: <20240428071347.409202-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This commit uses the common inline functions to serialize
 and deserialize header of asynchronous packet. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp> --- drivers/firewire/ohci.c | 24 ++++++++ 1 file
 changed, 8 insertions(+), 16 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [64.147.123.145 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1s0yjc-0000Gv-72
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

This commit uses the common inline functions to serialize and deserialize
header of asynchronous packet.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 24 ++++++++----------------
 1 file changed, 8 insertions(+), 16 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index e4ad624c60cb..5f702f56ac7b 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -40,6 +40,7 @@
 
 #include "core.h"
 #include "ohci.h"
+#include "packet-header-definitions.h"
 
 #define ohci_info(ohci, f, args...)	dev_info(ohci->card.device, f, ##args)
 #define ohci_notice(ohci, f, args...)	dev_notice(ohci->card.device, f, ##args)
@@ -1550,21 +1551,15 @@ static int handle_at_packet(struct context *context,
 	return 1;
 }
 
-#define HEADER_GET_DESTINATION(q)	(((q) >> 16) & 0xffff)
-#define HEADER_GET_TCODE(q)		(((q) >> 4) & 0x0f)
-#define HEADER_GET_OFFSET_HIGH(q)	(((q) >> 0) & 0xffff)
-#define HEADER_GET_DATA_LENGTH(q)	(((q) >> 16) & 0xffff)
-#define HEADER_GET_EXTENDED_TCODE(q)	(((q) >> 0) & 0xffff)
-
 static void handle_local_rom(struct fw_ohci *ohci,
 			     struct fw_packet *packet, u32 csr)
 {
 	struct fw_packet response;
 	int tcode, length, i;
 
-	tcode = HEADER_GET_TCODE(packet->header[0]);
+	tcode = async_header_get_tcode(packet->header);
 	if (TCODE_IS_BLOCK_PACKET(tcode))
-		length = HEADER_GET_DATA_LENGTH(packet->header[3]);
+		length = async_header_get_data_length(packet->header);
 	else
 		length = 4;
 
@@ -1591,10 +1586,10 @@ static void handle_local_lock(struct fw_ohci *ohci,
 	__be32 *payload, lock_old;
 	u32 lock_arg, lock_data;
 
-	tcode = HEADER_GET_TCODE(packet->header[0]);
-	length = HEADER_GET_DATA_LENGTH(packet->header[3]);
+	tcode = async_header_get_tcode(packet->header);
+	length = async_header_get_data_length(packet->header);
 	payload = packet->payload;
-	ext_tcode = HEADER_GET_EXTENDED_TCODE(packet->header[3]);
+	ext_tcode = async_header_get_extended_tcode(packet->header);
 
 	if (tcode == TCODE_LOCK_REQUEST &&
 	    ext_tcode == EXTCODE_COMPARE_SWAP && length == 8) {
@@ -1640,10 +1635,7 @@ static void handle_local_request(struct context *ctx, struct fw_packet *packet)
 		packet->callback(packet, &ctx->ohci->card, packet->ack);
 	}
 
-	offset =
-		((unsigned long long)
-		 HEADER_GET_OFFSET_HIGH(packet->header[1]) << 32) |
-		packet->header[2];
+	offset = async_header_get_offset(packet->header);
 	csr = offset - CSR_REGISTER_BASE;
 
 	/* Handle config rom reads. */
@@ -1679,7 +1671,7 @@ static void at_context_transmit(struct context *ctx, struct fw_packet *packet)
 
 	spin_lock_irqsave(&ctx->ohci->lock, flags);
 
-	if (HEADER_GET_DESTINATION(packet->header[0]) == ctx->ohci->node_id &&
+	if (async_header_get_destination(packet->header) == ctx->ohci->node_id &&
 	    ctx->ohci->generation == packet->generation) {
 		spin_unlock_irqrestore(&ctx->ohci->lock, flags);
 
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
