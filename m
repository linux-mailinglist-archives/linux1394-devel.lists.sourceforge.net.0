Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 138828B4A62
	for <lists+linux1394-devel@lfdr.de>; Sun, 28 Apr 2024 09:14:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s0yjl-00070r-7G;
	Sun, 28 Apr 2024 07:14:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s0yjh-00070c-IL
 for linux1394-devel@lists.sourceforge.net;
 Sun, 28 Apr 2024 07:14:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=L/RXyIBehhYux/Or0vr4pakBmao+Fg8KZrIh09642yE=; b=OYPoEqcWzgab4U0NktUpDBHPqW
 eEwZRFz05VbjMBoWtdD6fYYdU3PtfIvSkSuOkqToJzFxKngVJaa34Q/mBAFNnxqV4AYLNmFspvzTu
 CjzQJBI78LfczDzYznHKrygp2Ma41c4Xn0eG0+ZQkoz+Tzo/eJRgcU4NYTj/MEOGLArk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=L/RXyIBehhYux/Or0vr4pakBmao+Fg8KZrIh09642yE=; b=Mtta8zoKh0IfFK0O4zoeEG59CZ
 cBhBU/OIwrBY27mNffvv3jiXxHhEBBnBMCJf1LqSeXBr2MoFu5cDdUO6oIICCug3jvv3Quiowe7+k
 kyDC561Ufgszhzxj2rrliFrWZipBHVzFNw2334qQihAMO2sl5I4DuPhNLCBLDJFslzRA=;
Received: from wfhigh4-smtp.messagingengine.com ([64.147.123.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s0yjg-0000HP-PD for linux1394-devel@lists.sourceforge.net;
 Sun, 28 Apr 2024 07:14:09 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailfhigh.west.internal (Postfix) with ESMTP id 82BFA18000DF;
 Sun, 28 Apr 2024 03:14:03 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Sun, 28 Apr 2024 03:14:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1714288443; x=
 1714374843; bh=L/RXyIBehhYux/Or0vr4pakBmao+Fg8KZrIh09642yE=; b=W
 tvjpqUubt161YGVTW1Rws77Fn/buXIZeCo4Pen1YMoN92WydCKHLZahDRJ5UqVUC
 cNqAS6L0ev7t2OwZo6orfEkqTetkTUKgZXGiwcq8/t6bJCYafMjOaqm8VZrb2Kth
 e0qr1cVPO7SkBhMAuOn9JO5riww9SIRmmQb6VxFbLdIuFFRiu11J59RAlkroi3qx
 yGdDd59dEq038wD0rU8eQhSMeGdZ8j2mmhsRPfJD3OdRNhnEMwQZdZkn6/GWPAJN
 K2GXkYfioIHUqUDkuh98P0m1rHoteFZABjF4djxx1z1nGjuRd6zRZoYEbNOX1u0E
 6oDFt85ga91pGvlePKiBQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1714288443; x=
 1714374843; bh=L/RXyIBehhYux/Or0vr4pakBmao+Fg8KZrIh09642yE=; b=J
 o1KtoeWtX7K9GT0S73UqzZvVFj1Ix9pnrkDpPV6zhAlGtWWakUvfpfFGTFQuRltk
 J3el6msTNrDXfCuMU+pIrGTGnCQ8arpmfEhmgDFUwLSs3dPemgcAEEI14s/VjfK8
 YcVmgqZElmvxO2Fkab58H7BmmbEYaVfq4TAITIbtY8VvYMx7xCE8qQFCRJO2rdw4
 vkgvvMJrvD7ZcaCsqxYJXO1i+Lqx5lEDy9Zlcp7cj0STbA0IhFCyJni5xe3vQkuj
 OJia3B31EnhXUBxDY2TVqiSGx2Iooe5nvD/8rNsLu5TAo1k5ahWc44hK7hZrjlOL
 pDpBhfWGLSvmcnospPVoQ==
X-ME-Sender: <xms:OvctZmPitrAL7EhHFhkVj-ku0xhT_ECm6FtN0Bscy03Pxe-vgWaGSA>
 <xme:OvctZk9yfWJPi4QML_dQBXiwRaBVPvTaoGTNd2svMPVkhF_TRgKSKKEsCzZJGKRgt
 nOFZzbpOoN2gexKD9c>
X-ME-Received: <xmr:OvctZtT9UH7bkCwYiFPYXPq9UF4GBmFHh2FQzm8GCG2jj9RQ86z4NABQ38cgUSCkcKij_ecWi1QvcSY7_xUUqegKECZg3gUL5QfgKuX-cJTueg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvddtgedgvddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:OvctZmv326hozKHpvYmGotA2_M_YTCYkG6qscayQVg-yEvvjdaRy3g>
 <xmx:OvctZuc-2qKYTZBM4ueUFJ2Y8N2rQt-uHNgETKQPZhVutUBVU51vaw>
 <xmx:OvctZq3uSjte4P4yB8iTTeyomMbLl4zY6Fb18hq3qbgdUBSN_JJSOQ>
 <xmx:OvctZi-fcBEdGIWpgzlkBV-VvclWcrFdrcCZsE4ZzV-52FVreEBifw>
 <xmx:O_ctZvqhYdh_epz2FOTPzfxe37ZW7t_YodGS29B1RaX8hhrBPczGzAS5>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 28 Apr 2024 03:14:01 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 5/8] firewire: ohci: replace hard-coded values with common
 macros
Date: Sun, 28 Apr 2024 16:13:43 +0900
Message-ID: <20240428071347.409202-6-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240428071347.409202-1-o-takashi@sakamocchi.jp>
References: <20240428071347.409202-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: In the helper function for logging in 1394 ohci driver
 includes
 the hard-coded variables for transaction code. They can be replaced with
 the enumerations in UAPI header. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- drivers/firewire/ohci.c | 18 ++++++++++++++---- 1 file changed,
 14 insertions(+), 4 deletions(-) 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [64.147.123.155 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1s0yjg-0000HP-PD
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

In the helper function for logging in 1394 ohci driver includes the
hard-coded variables for transaction code. They can be replaced with
the enumerations in UAPI header.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index be8ede492ead..4811e3255ca8 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -533,11 +533,17 @@ static void log_ar_at_event(struct fw_ohci *ohci,
 	}
 
 	switch (tcode) {
-	case 0x0: case 0x6: case 0x8:
+	case TCODE_WRITE_QUADLET_REQUEST:
+	case TCODE_READ_QUADLET_RESPONSE:
+	case TCODE_CYCLE_START:
 		snprintf(specific, sizeof(specific), " = %08x",
 			 be32_to_cpu((__force __be32)header[3]));
 		break;
-	case 0x1: case 0x5: case 0x7: case 0x9: case 0xb:
+	case TCODE_WRITE_BLOCK_REQUEST:
+	case TCODE_READ_BLOCK_REQUEST:
+	case TCODE_READ_BLOCK_RESPONSE:
+	case TCODE_LOCK_REQUEST:
+	case TCODE_LOCK_RESPONSE:
 		snprintf(specific, sizeof(specific), " %x,%x",
 			 async_header_get_data_length(header),
 			 async_header_get_extended_tcode(header));
@@ -547,7 +553,7 @@ static void log_ar_at_event(struct fw_ohci *ohci,
 	}
 
 	switch (tcode) {
-	case 0xa:
+	case TCODE_STREAM_DATA:
 		ohci_notice(ohci, "A%c %s, %s\n",
 			    dir, evts[evt], tcodes[tcode]);
 		break;
@@ -555,7 +561,11 @@ static void log_ar_at_event(struct fw_ohci *ohci,
 		ohci_notice(ohci, "A%c %s, PHY %08x %08x\n",
 			    dir, evts[evt], header[1], header[2]);
 		break;
-	case 0x0: case 0x1: case 0x4: case 0x5: case 0x9:
+	case TCODE_WRITE_QUADLET_REQUEST:
+	case TCODE_WRITE_BLOCK_REQUEST:
+	case TCODE_READ_QUADLET_REQUEST:
+	case TCODE_READ_BLOCK_REQUEST:
+	case TCODE_LOCK_REQUEST:
 		ohci_notice(ohci,
 			    "A%c spd %x tl %02x, %04x -> %04x, %s, %s, %012llx%s\n",
 			    dir, speed, async_header_get_tlabel(header),
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
