Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BECE93C711
	for <lists+linux1394-devel@lfdr.de>; Thu, 25 Jul 2024 18:17:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sX19J-0007I7-RF;
	Thu, 25 Jul 2024 16:17:01 +0000
Received: from [172.30.29.67] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sX19I-0007Hq-SX
 for linux1394-devel@lists.sourceforge.net;
 Thu, 25 Jul 2024 16:17:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h+H2yEi8ybHeKFH2f2sjnPyfhN6u+CBYpHOx6Zj5E8M=; b=S2z82Dj8jZzVTHpUO4SEj1y1yA
 Y8pWte1qIl7daD2TzJ6zU/EAIDAMHSn4eZpmSjK2lxsho8QbeNRBPVsJ6ePkDOrDm87SRNUJR9JzZ
 D+j5MJlDXcNeA+nBpAyJnD67oyh/5H2jslxs6+SIrLZfBGHDeelaoIpkkroYO3ClQ5rA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=h+H2yEi8ybHeKFH2f2sjnPyfhN6u+CBYpHOx6Zj5E8M=; b=h
 CEMU8In8Vm3/OLDLoYBs/lhjE0RL4DO6qxYQsBUSrerhOZTEzNB8RSB+uzs1Gjx5tQBqLWf76CmXL
 SoQefMzid/7tksxYsTMXBl3aQLMvc4yPCNOzGKrxuchg3IVuF7xbjWV+zJ0G58/s2DmlzBm2JLHdF
 L+tuEGsfCqdplA9A=;
Received: from fhigh4-smtp.messagingengine.com ([103.168.172.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sX19H-0003XT-Ra for linux1394-devel@lists.sourceforge.net;
 Thu, 25 Jul 2024 16:17:00 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 2B77011401C8;
 Thu, 25 Jul 2024 12:16:53 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 25 Jul 2024 12:16:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm3; t=1721924213; x=1722010613; bh=h+H2yEi8yb
 HeKFH2f2sjnPyfhN6u+CBYpHOx6Zj5E8M=; b=ph5E0sfAaao5oK42xaypo8WJuW
 JKBEIf5glHECYVUQfhLj5/83Cuuu8lpCNoXSNblDmesJSCdWTuRRIqgN61enWkNf
 yzZ7k5+ECdtPHfW8y21oD/QG21QOwghFDFqeDF3dGsc4OnB5Y7uOrVGTLce5Ud80
 SsfJbf/Ft52MYkjqeLJibiuDEaKfk1Gj/RNoYT5eGVW+mGtkHlcmlq5rC/UMQShW
 mYm7VmVNRzMk9oBz/WfNs0jjK2RhXY4iSlUWvInCDQ6CkIc4yU9bXI42dEpc/gE1
 A4DANtOJH8pgvn4kYxlwYyQ6u43RNqCPVOi9VvZzJUA3zekAulAp2JTD8qug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1721924213; x=1722010613; bh=h+H2yEi8ybHeKFH2f2sjnPyfhN6u
 +CBYpHOx6Zj5E8M=; b=paVKY+PPOIf9XJJBEgh0KulvARNU0+AFTiQBbftVKhL2
 bI7XvkKUS0Ddv48Rs2v4WsEZF1u/M545RBUU38k5h6drok1b32pIBrNpwF8klBNC
 t7tfHmN9JPfCoIQb8Y7LAMiiJnw9EVOVXeVroFJVO547yAQe291X0FElu9km2/hD
 y0S/aD2VoTEUYgZ9iP5Fty0G9pdmrmU8DT+JAxG2UmdiwRHVuv59rXXYW4z96dr4
 BOiRatEUjcL4Xiz9yBfA/ucfT7UqTVkkhv/TojgP+7A0p8mNi/Rv9vptZ3UXUgHa
 kOxqHakpeGS4EooxOvuEbCzb0JICenik5YwnoI2yDg==
X-ME-Sender: <xms:dXqiZpGlapbyRVr2UpkUKea8WjZdeAF5Q4CZDKJC6DXi3eOUETnafA>
 <xme:dXqiZuXgyoO-5XR8B99uvfudBE2JlUdhmI_i3dDMoHQ46he-3bGM80-6iT7xi7shR
 cFvtFiHU4ppb4eWjjI>
X-ME-Received: <xmr:dXqiZrLX60P0D0y7IkTCNIXCFCeJyNoqbbey59c8mv8t9Ugwv7zzCxF-h3esi88M_WIyJav_MznLIEXMvs5CChq0Jb16y7Urjuvd-x4B5XSBZ28>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrieefgdellecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepffdvueelffevke
 duhfetjeduffeghfettdfguedtgfdvgfeufeduheevheevkeeknecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:dXqiZvEuMEgjbsAPaITWI8FKFJQb7tAB3ZkoAomgIE6t6DeJ0tcPQQ>
 <xmx:dXqiZvVGIIfhW89g8wH-lGrTfERCxkxMVz46YmtmEdCXu-PaBjUEzg>
 <xmx:dXqiZqPwQOn9zjYxUZOKml1lIqtkGXwwTNEwCK-rAdlM8uTrBfvQBA>
 <xmx:dXqiZu14uksIK11YK-jMXqfpp1RDWJblRy4W2lH6RqI4J057Kikidg>
 <xmx:dXqiZqSnC1E7BGTwf6stVF5VvLPQ5fvSqbd1ctzkJRWYfYy4DHEkkruB>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 25 Jul 2024 12:16:51 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] Revert "firewire: Annotate struct fw_iso_packet with
 __counted_by()"
Date: Fri, 26 Jul 2024 01:16:48 +0900
Message-ID: <20240725161648.130404-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This reverts commit d3155742db89df3b3c96da383c400e6ff4d23c25.
 The header_length field is byte unit, thus it can not express the number
 of elements in header field. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- include/linux/firewire.h | 5 ++--- 1 file changed, 2 insertions(+), 3
 deletions(-) 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.155 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.155 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.155 listed in sa-accredit.habeas.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1sX19H-0003XT-Ra
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
Cc: linux-kernel@vger.kernel.org, gustavo@embeddedor.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

This reverts commit d3155742db89df3b3c96da383c400e6ff4d23c25.

The header_length field is byte unit, thus it can not express the number of
elements in header field.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 include/linux/firewire.h | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/include/linux/firewire.h b/include/linux/firewire.h
index 00abe0e5d602..1cca14cf5652 100644
--- a/include/linux/firewire.h
+++ b/include/linux/firewire.h
@@ -462,9 +462,8 @@ struct fw_iso_packet {
 				/* rx: Sync bit, wait for matching sy	*/
 	u32 tag:2;		/* tx: Tag in packet header		*/
 	u32 sy:4;		/* tx: Sy in packet header		*/
-	u32 header_length:8;	/* Length of immediate header		*/
-				/* tx: Top of 1394 isoch. data_block    */
-	u32 header[] __counted_by(header_length);
+	u32 header_length:8;	/* Size of immediate header		*/
+	u32 header[];		/* tx: Top of 1394 isoch. data_block	*/
 };
 
 #define FW_ISO_CONTEXT_TRANSMIT			0
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
