Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0968B4A63
	for <lists+linux1394-devel@lfdr.de>; Sun, 28 Apr 2024 09:14:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s0yjm-00048j-7i;
	Sun, 28 Apr 2024 07:14:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s0yjj-00048O-I0
 for linux1394-devel@lists.sourceforge.net;
 Sun, 28 Apr 2024 07:14:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=29saDBiucRwDFm2Dxf2GJ51sLzVdC8ydOKBz+0kYKWI=; b=W6xdS+qvzqjLoCcMrKBL27NZTF
 hAnMJHjtZEEMal3dXujkziB1Gop94um16zOEyXRqXscC1p3vzcN6u/ZiTxq2IQvSJBudRGHozyc4o
 ZWWYrvpiTa2Prm2+vLkZ6SoRTG/pQTikFeRsCJIPxm2e/O7itP3M2cC8QnlW5QXdWsGQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=29saDBiucRwDFm2Dxf2GJ51sLzVdC8ydOKBz+0kYKWI=; b=ADWnNvLoezsNKt1cA7UCPc130q
 h7S/U5Uw6KztRqKmxIE0UtDnOKUSR83fKQFMYsxOD2wdTPQHNHa6vlUSawbRYeAYxbXmxXTPXezqj
 Hh1O72xdNx8dzX+BE5G/cwGRmY8rPDnX7Kj5lTaDErr0SPRnbLyZpYdMp/i3dUvH/S+A=;
Received: from wfout2-smtp.messagingengine.com ([64.147.123.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s0yjj-0000HT-0J for linux1394-devel@lists.sourceforge.net;
 Sun, 28 Apr 2024 07:14:12 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
 by mailfout.west.internal (Postfix) with ESMTP id C336D1C0010E;
 Sun, 28 Apr 2024 03:14:05 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute7.internal (MEProxy); Sun, 28 Apr 2024 03:14:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1714288445; x=
 1714374845; bh=29saDBiucRwDFm2Dxf2GJ51sLzVdC8ydOKBz+0kYKWI=; b=D
 8Nn7C3LYgunlA2nvLOeV4pixwLbMAnsueIACChcxEn24JVQlgteE/8twmdO31K5s
 D8IEgdQi2KT0Kq6HzWfEAwGNdulFBe+0Xa7jVB1/Bfrf8lRqYRBRu1bkBWf408nq
 j8h+4sg6WevcRiLkyGBTR8QtriEyHi06fK2H/GdXP8bi64OWRaCt81jCKMebAVGE
 1u/B7oq2DANF+F551MUnOaNHfAOSqDlvJQnaNp2ZnS2AIYCcfUiC9mY/KQU+fBGd
 +J9ntILYMNNQAEiKzwAoTW5mPHkJifeKon569dHvnyZeNaTAPnirZ4Et3Mgj/S3H
 DbIsyhq27tFpYJJH/+yZQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1714288445; x=
 1714374845; bh=29saDBiucRwDFm2Dxf2GJ51sLzVdC8ydOKBz+0kYKWI=; b=N
 F90Df3Vb5Tz84EVApIVzt2YxT8p3xgVDtCTxfCTxpg0B1A9TewWhXPKDvmFN9Kk/
 rFiZZkr4nDJPdaCC5A04fR+SQAHp/6ZqMCIWeixGXD2HWxxv6HO2nEjctee75Pjz
 uHVJCZrPZry8demuk3o2SxndasM4H9nkAd6U9UWaJaIkSKTvj07CaE3Stvoq6uN6
 yvW4mvLP1Ujsvy989PiLKOCcK19You9GlQhT6Rppa3IKz6OxEialqd9vHNI012pa
 nXwViTiSzihjpFkrebzwo1qxAKQmDOUuRmTYmcNroGAwddoowhcfaY+4NYXe00PT
 F4o39IxnidTmNE9wVw9/A==
X-ME-Sender: <xms:PfctZgV37ZvTIZKZYqWVV0ZPMHpuILJyz2F3OxtoUmhC2OGPKEVDIA>
 <xme:PfctZklHnBOGM2cyvXu8MbxHe00q1U_5KF-W6vsBKsYA5TS7y90mJqls5aLJ94Xch
 Gh8l8hPp9jEhkkDMGg>
X-ME-Received: <xmr:PfctZkZIQr4tB92zQujP2g1kzPklb9RWUa03Rvb1xxwRRsKY51pqk4sQv7_SPEtW62KQEXDaeypXY0On_xBx56ENARPV6xX6Cu79ORT-gy-5Tw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvddtgedgvddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:PfctZvUVkyjeGoZ5rYlixXydMvONPw6h08rfQQ9ZNw_snEwJIYDdxA>
 <xmx:PfctZqk7elx4pxaeSwxbpHDjT_3OyGf8eatXvAvfJFslURyaw1umYw>
 <xmx:PfctZkfZV0ABpAn_ymli62MiJOH5grMR-F8hHM0QTez0bW4paCU0BQ>
 <xmx:PfctZsHerqSHDMQy5EuC8-aYCBpjYd13fx1VjN7rQVncjm7S6AlygA>
 <xmx:PfctZvy0Byp59UWpFosU6QXr6dp893x2PA9MH3A2hAfDdrljFScHpJJT>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 28 Apr 2024 03:14:04 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 6/8] firewire: core: obsolete tcode check macros with inline
 functions
Date: Sun, 28 Apr 2024 16:13:44 +0900
Message-ID: <20240428071347.409202-7-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240428071347.409202-1-o-takashi@sakamocchi.jp>
References: <20240428071347.409202-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This commit declares the helper functions to check tcode to
 obsolete the functional macros. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- drivers/firewire/core-transaction.c | 4 ++-- drivers/firewire/core.h
 | 21 ++++++++++++++------- drivers/firewire/ohci.c | 6 +++--- 3 files [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [64.147.123.145 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1s0yjj-0000HT-0J
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

This commit declares the helper functions to check tcode to obsolete
the functional macros.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c |  4 ++--
 drivers/firewire/core.h             | 21 ++++++++++++++-------
 drivers/firewire/ohci.c             |  6 +++---
 3 files changed, 19 insertions(+), 12 deletions(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index a113f801cf33..45ea15342ab8 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -972,7 +972,7 @@ void fw_core_handle_request(struct fw_card *card, struct fw_packet *p)
 	if (p->ack != ACK_PENDING && p->ack != ACK_COMPLETE)
 		return;
 
-	if (TCODE_IS_LINK_INTERNAL(async_header_get_tcode(p->header))) {
+	if (tcode_is_link_internal(async_header_get_tcode(p->header))) {
 		fw_cdev_handle_phy_packet(card, p);
 		return;
 	}
@@ -1109,7 +1109,7 @@ static void handle_topology_map(struct fw_card *card, struct fw_request *request
 {
 	int start;
 
-	if (!TCODE_IS_READ_REQUEST(tcode)) {
+	if (!tcode_is_read_request(tcode)) {
 		fw_send_response(card, request, RCODE_TYPE_ERROR);
 		return;
 	}
diff --git a/drivers/firewire/core.h b/drivers/firewire/core.h
index ff96e5456b5d..5097c7a270b4 100644
--- a/drivers/firewire/core.h
+++ b/drivers/firewire/core.h
@@ -225,13 +225,20 @@ static inline bool is_next_generation(int new_generation, int old_generation)
 
 #define TCODE_LINK_INTERNAL		0xe
 
-#define TCODE_IS_READ_REQUEST(tcode)	(((tcode) & ~1) == 4)
-#define TCODE_IS_BLOCK_PACKET(tcode)	(((tcode) &  1) != 0)
-#define TCODE_IS_LINK_INTERNAL(tcode)	((tcode) == TCODE_LINK_INTERNAL)
-#define TCODE_IS_REQUEST(tcode)		(((tcode) &  2) == 0)
-#define TCODE_IS_RESPONSE(tcode)	(((tcode) &  2) != 0)
-#define TCODE_HAS_REQUEST_DATA(tcode)	(((tcode) & 12) != 4)
-#define TCODE_HAS_RESPONSE_DATA(tcode)	(((tcode) & 12) != 0)
+static inline bool tcode_is_read_request(unsigned int tcode)
+{
+	return (tcode & ~1u) == 4u;
+}
+
+static inline bool tcode_is_block_packet(unsigned int tcode)
+{
+	return (tcode & 1u) != 0u;
+}
+
+static inline bool tcode_is_link_internal(unsigned int tcode)
+{
+	return (tcode == TCODE_LINK_INTERNAL);
+}
 
 #define LOCAL_BUS 0xffc0
 
diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 4811e3255ca8..6116153f0ce6 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -1382,7 +1382,7 @@ static int at_context_queue_packet(struct context *ctx,
 					(packet->header[0] & 0xffff0000));
 		header[2] = cpu_to_le32(packet->header[2]);
 
-		if (TCODE_IS_BLOCK_PACKET(tcode))
+		if (tcode_is_block_packet(tcode))
 			header[3] = cpu_to_le32(packet->header[3]);
 		else
 			header[3] = (__force __le32) packet->header[3];
@@ -1568,7 +1568,7 @@ static void handle_local_rom(struct fw_ohci *ohci,
 	int tcode, length, i;
 
 	tcode = async_header_get_tcode(packet->header);
-	if (TCODE_IS_BLOCK_PACKET(tcode))
+	if (tcode_is_block_packet(tcode))
 		length = async_header_get_data_length(packet->header);
 	else
 		length = 4;
@@ -1577,7 +1577,7 @@ static void handle_local_rom(struct fw_ohci *ohci,
 	if (i + length > CONFIG_ROM_SIZE) {
 		fw_fill_response(&response, packet->header,
 				 RCODE_ADDRESS_ERROR, NULL, 0);
-	} else if (!TCODE_IS_READ_REQUEST(tcode)) {
+	} else if (!tcode_is_read_request(tcode)) {
 		fw_fill_response(&response, packet->header,
 				 RCODE_TYPE_ERROR, NULL, 0);
 	} else {
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
