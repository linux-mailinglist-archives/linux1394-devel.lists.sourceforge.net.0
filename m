Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 843A98B4A67
	for <lists+linux1394-devel@lfdr.de>; Sun, 28 Apr 2024 09:14:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s0yjp-0002Qx-L7;
	Sun, 28 Apr 2024 07:14:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s0yjo-0002Ql-IZ
 for linux1394-devel@lists.sourceforge.net;
 Sun, 28 Apr 2024 07:14:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lPogmESFCjjhKwyywY5ioCHwxWU0kxDIYwzD2LnEo2I=; b=fxFHLPznPWYeEhNjr6hIVzGgQo
 zVaSnh5cn1w1181CFXowK+u2e7NZrLPYC+u7I2pd2MR710WFqAWw2JRmFM3Pa+Upv91S993Eb8oT1
 mi3vQWfY2ojU3WYVZUeb2fIXQyjnZrUiQy4asMm4zIYu0TLrcgK5+gsuaiFd362lIyfs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lPogmESFCjjhKwyywY5ioCHwxWU0kxDIYwzD2LnEo2I=; b=HmPSKfeybrX2na+V+mCXqNd6wP
 jNmJ0AQmeAo10zUjUnj2giMQ6rtCGHGUdTs+7LjeqtetfR4ar5xIpAra1tmjwD1Pq/bmubHcQMOmQ
 v5iQ+XsHu1PBGjVhSK49Si1WXFsal0Umr8dU1fLZij0nGjwNyIDtwxgKSEGGo5iPFMQY=;
Received: from wfout2-smtp.messagingengine.com ([64.147.123.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s0yjn-0000Hg-Gh for linux1394-devel@lists.sourceforge.net;
 Sun, 28 Apr 2024 07:14:16 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
 by mailfout.west.internal (Postfix) with ESMTP id 557BE1C00117;
 Sun, 28 Apr 2024 03:14:10 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute7.internal (MEProxy); Sun, 28 Apr 2024 03:14:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1714288449; x=
 1714374849; bh=lPogmESFCjjhKwyywY5ioCHwxWU0kxDIYwzD2LnEo2I=; b=Z
 wSTrBjY43WI6YKaYmgDkI9Nst9YYYq6A4nsb1IJ5HuvrqQqtb5WGRD2tGZ9HW6QL
 H1Ly41PTSoY6oidRtPzI7ViCgxNHmhVElnFuk2OKl3zCP9IuiYvKunzbE4MR50VT
 O8/Mp+Uh5K08o3a/at7r/msylib5UJbZqQnG4khImEwsUTdrImTLpRQhc0CVH1H/
 thuc+dV5hfMKKFnegc3Mu6prEjBJaEBTcGtbH1FLYRc6Nq6Ya1iY++FM7BrHspKR
 6gSK3Zd61NBOT9f78gZ5fTFjBGoTzEVkOoSd9urLcyj3af1lc5zByXfJZC7QBXEf
 fhZvt0qIbeAxbMFKoa31A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1714288449; x=
 1714374849; bh=lPogmESFCjjhKwyywY5ioCHwxWU0kxDIYwzD2LnEo2I=; b=F
 YhcsQzE4PfsHqDm8r24CRLhIwR9M/lIzMWUtH0z6aNYUwdzM6N4EFeXxFLhe88EK
 gB9bnz3KWsh8wd0bAUZ4GICH3ggl7G9k0N15+bC9pjaISimxUqsk415vyb3Tnv7T
 N7gw75+4qddcXdKY+7qEPxbBclopI6R38bgV9s0nHV/Rj3PwPTCVs009uGsnVSiV
 xEcxZliPPvvtjmcKEt19Ys4E2rjZlelwiTux0Fg0ARjfaPVTlMFSsaY2wJXsgEMn
 WZWPG4Z8W1UjHf13Z2DtU7xq1vQ4vHiT2v0MAeVy0n5gUTSqaCUaO57taOlB01sJ
 tqVGckZGmmlGeGLh1XzlQ==
X-ME-Sender: <xms:QfctZvfXMQZkHTcIIPUuxQA67v6K9ewAjIBZM1i3Q3_9aoGD3TCugg>
 <xme:QfctZlP66vyEKnt_-KXP1Fz78kQO7dJ50yGzPOru3ZxsctSqyW5I51wwaVU_Ew23f
 sCoNPH81TBUbuNabQc>
X-ME-Received: <xmr:QfctZoh_14IMkh1I4cYf84pam-QFhaIFK6Mp4PaWCaALl03DIjS_CqQ7vILkZG3F2ZP0Gt0FSxQ6s8fZpWnj834D1eGHUlHqP3xPHlpZvVMSFA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvddtgedgvddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:QfctZg_pmBhWuAW6SF1YTA0ixsuQefSJDzq_ZKAN53nOkNGBrEncyw>
 <xmx:QfctZrt5lvLijpdI6gxZGdr8VSjOWs6U9NauJ4zBtafNoEnQrji6Xw>
 <xmx:QfctZvFyul6bR86fo_f6IWX2J3dBAVPdnfrbLuu_P31KIt7TBglLPw>
 <xmx:QfctZiMIcT9XQH85mxQLUZ6mzZeVrXhV-hTb7F8zXc3FfxlTie5_pw>
 <xmx:QfctZk7j0jRF_FbRN1bYZsv-FwGv4h_63LfxTl1EzCKfoIGSmWrQHIay>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 28 Apr 2024 03:14:08 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 8/8] firewire: core: replace local macros with common inline
 functions for isochronous packet header
Date: Sun, 28 Apr 2024 16:13:46 +0900
Message-ID: <20240428071347.409202-9-o-takashi@sakamocchi.jp>
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
 Content preview: This commit replaces the local macros with the common inline
 functions to serialize the packer header for Asynchronous Streaming Packet.
 Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp> ---
 drivers/firewire/core-transaction.c
 | 12 +++++------- 1 file changed, 5 insertions(+), 7 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
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
X-Headers-End: 1s0yjn-0000Hg-Gh
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

This commit replaces the local macros with the common inline functions
to serialize the packer header for Asynchronous Streaming Packet.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index 45ea15342ab8..3ecb0b945083 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -31,9 +31,6 @@
 #include "core.h"
 #include "packet-header-definitions.h"
 
-#define HEADER_TCODE(tcode)		((tcode) << 4)
-#define HEADER_DATA_LENGTH(length)	((length) << 16)
-
 #define HEADER_DESTINATION_IS_BROADCAST(header) \
 	((async_header_get_destination(header) & 0x3f) == 0x3f)
 
@@ -215,10 +212,11 @@ static void fw_fill_request(struct fw_packet *packet, int tcode, int tlabel,
 	int ext_tcode;
 
 	if (tcode == TCODE_STREAM_DATA) {
-		packet->header[0] =
-			HEADER_DATA_LENGTH(length) |
-			destination_id |
-			HEADER_TCODE(TCODE_STREAM_DATA);
+		// The value of destination_id argument should include tag, channel, and sy fields
+		// as isochronous packet header has.
+		packet->header[0] = destination_id;
+		isoc_header_set_data_length(packet->header, length);
+		isoc_header_set_tcode(packet->header, TCODE_STREAM_DATA);
 		packet->header_length = 4;
 		packet->payload = payload;
 		packet->payload_length = length;
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
