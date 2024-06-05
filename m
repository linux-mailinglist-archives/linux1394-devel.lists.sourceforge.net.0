Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C972F8FDAE4
	for <lists+linux1394-devel@lfdr.de>; Thu,  6 Jun 2024 01:52:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sF0Qe-0002Dj-Sd;
	Wed, 05 Jun 2024 23:52:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sF0Qa-0002D7-Gb
 for linux1394-devel@lists.sourceforge.net;
 Wed, 05 Jun 2024 23:52:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/hGv3vJEc747DzmJ/9VfAfyTUxjs3kdRF01FRUOE/pw=; b=JKwl3CE/teGb++GhHVENmic7Fo
 fzuAxxa2gvvMMg3Ow+2DiaUMrlLhWePpoatdzWP2r0gk9zA0baTro3rh0v1NCp9G3kmwCy3GXP8QZ
 NVB1Josg3pGfKBmsM3sdsSZewqzTlPPlS3XkywHETyL5difmpvFRutMAWcvxHqk1H+o4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/hGv3vJEc747DzmJ/9VfAfyTUxjs3kdRF01FRUOE/pw=; b=WvgWW8Sc36bPjOjvI2OxjlU4Po
 HNrGIkI3Wrn/haz2VJQjAOIlDT0Bzk/Bpsdkw5D7y9EPACG+A4oSOLWd+Ypi9Y7v22pF3C4rDRoBh
 6r1WBJCPlDEixkgQfqRHPu8gmOd3NPuspzPr37A+a9kNE8QjS2lc7eTTV1tcPtRYyYLo=;
Received: from wfout2-smtp.messagingengine.com ([64.147.123.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sF0QV-0004YM-IT for linux1394-devel@lists.sourceforge.net;
 Wed, 05 Jun 2024 23:52:19 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailfout.west.internal (Postfix) with ESMTP id 44DD01C000F6;
 Wed,  5 Jun 2024 19:52:13 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Wed, 05 Jun 2024 19:52:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1717631532; x=
 1717717932; bh=/hGv3vJEc747DzmJ/9VfAfyTUxjs3kdRF01FRUOE/pw=; b=O
 Z+9m358aGLTCduScfSN048PZa99HfCZyObOKRTIm6bTsz5tqCKkCprwsWt92n0AR
 jLzoKHDz9AemtWHL/yOZW1mXwu1KFK8Jm6fXIIWDsj7awY5OhKuCHfsTbiKB2CRZ
 vEx4kufoLuXxkM+EMhq2KsYR0nf8Qd/VExLSCU8jAY/10JQFctQPj8AienUWiaTn
 6fsz2AXEFRvmukubJicnvdOL2glvlbJMdSK/Lr6kOad3vuPt4nCbO8Qh6488Tz7l
 tXVhSAUux5rdM6oNGnW+v9AAhY+YbmMpyGXF5v+eS2Yq1/FayJyoUakkWzQPn01p
 vzwamJr2olNffZCN7Z52A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1717631532; x=
 1717717932; bh=/hGv3vJEc747DzmJ/9VfAfyTUxjs3kdRF01FRUOE/pw=; b=Q
 vEdmz6X+LcTYjqIsPVViaVBO7b4pvuydIcoggOLl6ZhdsWKTK06FlJ9NU9r2ojIO
 kvd+yMIOsyofVwv80xTWnawc2+NUr9TUgRDWDfx5JN04qnK4Z7PeOyr+4Na9q+x9
 fhtKu0L2tnxHumMAufVoWcryamFqFnW3ZBqBF6wINKz8R6i59CndYwPbIoI9nU6M
 5qJtFTFWrC8OC9jjb/g0kmhKYB9rcoXxC4O1gffBEhFmmVp9x8ctgAV/DXgwudTr
 sOXyHq1NHR5LTljUeKPoqOfRFJCPdlbfwV6XygRukbt3HqfLe/bttV33e4EaC36d
 lJKMTCiI0KCfoYZITgTxQ==
X-ME-Sender: <xms:LPpgZmlrNaGnkmnZJ2tYBXcFYfYhQ-TGiPQQ4pjA-GWo35rB-RdUYg>
 <xme:LPpgZt0tAf1XDkRyHHpj6XE8mnqtovEfuls8DzBVotCXLIQNXa68CQoEmevvkHWC3
 Kw2AzqqNoWCzCMK82Y>
X-ME-Received: <xmr:LPpgZkpt0a2fJt978hHlf6ReZEXzTs7F65yHZrhHLX2SN4zHZ1ZBv-zLyUZEhb-PNO3xTaNiekJ1jbz8Bz2YEebsRWwHZKD0rOnRzI01qYZ7JA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdeljedgvdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:LPpgZqlwd1td5nDgFlBJrfLSNRyQDnW1MAUNCH80nfICdRUKpCVtSg>
 <xmx:LPpgZk2SIudKWyP0YWWVAeaQ18KoClSUXU8c0cVaxsq-jdFcUqUBDQ>
 <xmx:LPpgZhsVDJ-IuwHwn10NfZeCnrO0MhlE8t3QaXMd2rvKqi85duK2fQ>
 <xmx:LPpgZgXQnOR61lIAmNddxTIUAZqRK0zK12Zrqynf_WAjtQDuwphHiA>
 <xmx:LPpgZiC8PvmkuwMgQXq9uw6nzS2-4nUM_Zf4TeSlg0JdzhquZ8OthEI->
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 5 Jun 2024 19:52:11 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 06/11] firewire: ohci: use helper functions for self ID
 sequence
Date: Thu,  6 Jun 2024 08:51:50 +0900
Message-ID: <20240605235155.116468-7-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240605235155.116468-1-o-takashi@sakamocchi.jp>
References: <20240605235155.116468-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This commit replaces the existing implementation with the
 helper functions for self ID sequence. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- drivers/firewire/ohci.c | 77 ++++++++++++++++++++++++++ 1 file changed,
 49 insertions(+), 28 deletions(-) 
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
 [64.147.123.145 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [64.147.123.145 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sF0QV-0004YM-IT
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

This commit replaces the existing implementation with the helper
functions for self ID sequence.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 77 ++++++++++++++++++++++++++---------------
 1 file changed, 49 insertions(+), 28 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 0ef76cf7b328..342407d8bc9b 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -41,6 +41,7 @@
 #include "core.h"
 #include "ohci.h"
 #include "packet-header-definitions.h"
+#include "phy-packet-definitions.h"
 
 #define ohci_info(ohci, f, args...)	dev_info(ohci->card.device, f, ##args)
 #define ohci_notice(ohci, f, args...)	dev_notice(ohci->card.device, f, ##args)
@@ -437,11 +438,6 @@ static void log_irqs(struct fw_ohci *ohci, u32 evt)
 						? " ?"			: "");
 }
 
-static unsigned int _p(u32 *s, int shift)
-{
-	return *s >> shift & 3;
-}
-
 static void log_selfids(struct fw_ohci *ohci, int generation, int self_id_count)
 {
 	static const char *const speed[] = {
@@ -451,8 +447,16 @@ static void log_selfids(struct fw_ohci *ohci, int generation, int self_id_count)
 		[0] = "+0W",  [1] = "+15W", [2] = "+30W",    [3] = "+45W",
 		[4] = "-3W",  [5] = " ?W",  [6] = "-3..-6W", [7] = "-3..-10W",
 	};
-	static const char port[] = { '.', '-', 'p', 'c', };
-	u32 *s;
+	static const char port[] = {
+		[PHY_PACKET_SELF_ID_PORT_STATUS_NONE] = '.',
+		[PHY_PACKET_SELF_ID_PORT_STATUS_NCONN] = '-',
+		[PHY_PACKET_SELF_ID_PORT_STATUS_PARENT] = 'p',
+		[PHY_PACKET_SELF_ID_PORT_STATUS_CHILD] = 'c',
+	};
+	struct self_id_sequence_enumerator enumerator = {
+		.cursor = ohci->self_id_buffer,
+		.quadlet_count = self_id_count,
+	};
 
 	if (likely(!(param_debug & OHCI_PARAM_DEBUG_SELFIDS)))
 		return;
@@ -460,29 +464,46 @@ static void log_selfids(struct fw_ohci *ohci, int generation, int self_id_count)
 	ohci_notice(ohci, "%d selfIDs, generation %d, local node ID %04x\n",
 		    self_id_count, generation, ohci->node_id);
 
-	for (s = ohci->self_id_buffer; self_id_count--; ++s)
-		if ((*s & 1 << 23) == 0)
-			ohci_notice(ohci,
-			    "selfID 0: %08x, phy %d [%c%c%c] %s gc=%d %s %s%s%s\n",
-			    *s, *s >> 24 & 63,
-			    port[_p(s, 6)],
-			    port[_p(s, 4)],
-			    port[_p(s, 2)],
-			    speed[*s >> 14 & 3], *s >> 16 & 63,
-			    power[*s >> 8 & 7], *s >> 22 & 1 ? "L" : "",
-			    *s >> 11 & 1 ? "c" : "", *s & 2 ? "i" : "");
-		else
+	while (enumerator.quadlet_count > 0) {
+		unsigned int quadlet_count;
+		unsigned int port_index;
+		const u32 *s;
+		int i;
+
+		s = self_id_sequence_enumerator_next(&enumerator, &quadlet_count);
+		if (IS_ERR(s))
+			break;
+
+		ohci_notice(ohci,
+		    "selfID 0: %08x, phy %d [%c%c%c] %s gc=%d %s %s%s%s\n",
+		    *s,
+		    *s >> 24 & 63,
+		    port[self_id_sequence_get_port_status(s, quadlet_count, 0)],
+		    port[self_id_sequence_get_port_status(s, quadlet_count, 1)],
+		    port[self_id_sequence_get_port_status(s, quadlet_count, 2)],
+		    speed[*s >> 14 & 3], *s >> 16 & 63,
+		    power[*s >> 8 & 7], *s >> 22 & 1 ? "L" : "",
+		    *s >> 11 & 1 ? "c" : "", *s & 2 ? "i" : "");
+
+		port_index = 3;
+		for (i = 1; i < quadlet_count; ++i) {
 			ohci_notice(ohci,
 			    "selfID n: %08x, phy %d [%c%c%c%c%c%c%c%c]\n",
-			    *s, *s >> 24 & 63,
-			    port[_p(s, 16)],
-			    port[_p(s, 14)],
-			    port[_p(s, 12)],
-			    port[_p(s, 10)],
-			    port[_p(s,  8)],
-			    port[_p(s,  6)],
-			    port[_p(s,  4)],
-			    port[_p(s,  2)]);
+			    s[i],
+			    s[i] >> 24 & 63,
+			    port[self_id_sequence_get_port_status(s, quadlet_count, port_index)],
+			    port[self_id_sequence_get_port_status(s, quadlet_count, port_index + 1)],
+			    port[self_id_sequence_get_port_status(s, quadlet_count, port_index + 2)],
+			    port[self_id_sequence_get_port_status(s, quadlet_count, port_index + 3)],
+			    port[self_id_sequence_get_port_status(s, quadlet_count, port_index + 4)],
+			    port[self_id_sequence_get_port_status(s, quadlet_count, port_index + 5)],
+			    port[self_id_sequence_get_port_status(s, quadlet_count, port_index + 6)],
+			    port[self_id_sequence_get_port_status(s, quadlet_count, port_index + 7)]
+			);
+
+			port_index += 8;
+		}
+	}
 }
 
 static const char *evts[] = {
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
