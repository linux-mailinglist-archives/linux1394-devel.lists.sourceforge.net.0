Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7776092F305
	for <lists+linux1394-devel@lfdr.de>; Fri, 12 Jul 2024 02:30:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sS4BB-0003dO-3i;
	Fri, 12 Jul 2024 00:30:28 +0000
Received: from [172.30.29.67] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sS4B9-0003dE-2G
 for linux1394-devel@lists.sourceforge.net;
 Fri, 12 Jul 2024 00:30:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=R0S5CXN0MM8JyTerS230tI71Dv3Ebmcsqj7VGFBlIio=; b=P5lLkMEiuFO2AMqpsCmJv4zZl6
 3za/rvEgCA2qrlKojQ78kvxf5q1yxdOOgxmiStgRkt8ssy1fVAXmnyLxTK8VdM1Tq+v8EJhTDUBBl
 zn9qixwfB1MxVs/vpMiKSbZKLZgt8vUR7zMXvPLIyIlFUr8wjkbrDxHSoy5KLv2hY0KA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=R0S5CXN0MM8JyTerS230tI71Dv3Ebmcsqj7VGFBlIio=; b=V
 knl9dGNKUJcwrr5PtfuWMB/A25trJTkzikFQF5JWWZ9xe3IPHqPmY25/A+8QFlVvJ0JiOWI+p9MPT
 usyXj1RRieIiO8ThYcB1zpsSSLpmDsXEQWWVJI8ZiXq/oXMwbj1MGpQktS+Mlm3AANU9qhXfhdUo8
 0LBJWHG1GIzceuuk=;
Received: from fhigh1-smtp.messagingengine.com ([103.168.172.152])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sS4B8-0007qF-DT for linux1394-devel@lists.sourceforge.net;
 Fri, 12 Jul 2024 00:30:26 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 141CB11411A3;
 Thu, 11 Jul 2024 20:30:15 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Thu, 11 Jul 2024 20:30:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm2; t=1720744215; x=1720830615; bh=R0S5CXN0MM
 8JyTerS230tI71Dv3Ebmcsqj7VGFBlIio=; b=kwfka5r+wDxi6ryPJrdslI5zL2
 v83P8EOdyrzvvuPbPMXrJWPz1+Po3dskWhaJbO1ySosileioMBawgk0N1H6mr7sD
 7Dodvyjtu13gVrmCdoioPSl/GjVOMg/2CIfXIAywsgJG2Z93VQCmIcxRIo2J4tqE
 75Rwl8DlX7LP5pAoIZPtrDa6OehgvqX+7SdqAkbSWiImNK3PMiZvu+lwcD4+IMqn
 GZCVFuB2jzy8OALfp04zM/G1Zuod4j5riPP0er+/jXPD5D/ibVaVr77ChNub/n9C
 Mcz8AqAlhlCHF4BltVbQLVeZOsIjbdbdlNLescyrdKW4ZE9UIe5qnC9PoX6Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1720744215; x=1720830615; bh=R0S5CXN0MM8JyTerS230tI71Dv3E
 bmcsqj7VGFBlIio=; b=T2rKlP/u+VXEyMVgtzCd5sNgEs5i7R7lSuqdm/CEKjV2
 Z7moY1n4w2U6mFmHzQedgZCS6ftsBk7RKS6sQhd+NfjLsEx9ZUIm1BLMU+Uovm44
 um3h4+p3ClHqYIYbqX/Oe6nps09jPPyzlOurmhulqd4AHaXsHOmVaTjgwXnxV/dj
 I3SYTgptaCNCt1s0S7VX16NGVVyyshH7CsMQ56w/BDYl67z+Ae9ikqGA4ucyxe+/
 v+TaRxNKkmezA0CevihXa0tSt6jQXuwYKG+LF3hcAdCMT8xN5/bqgrlPL8FKtwrj
 AjnxYLuYP0uyCUfgz4OeC4uxzzvu45Gp9XbEtVFVlA==
X-ME-Sender: <xms:FXmQZgAV4jDEpdTFCSI1MNoaYMOLKr-N6o3mmWQJug3GpHQ03u_9_A>
 <xme:FXmQZigNF5NO3lT01AiRl6eTuHYBVVPvHlwXSPaU5lj_fgP8fmg3gKqplrMZVqJVd
 tzkshTC0qCm-BuL2qM>
X-ME-Received: <xmr:FXmQZjni4h4Mabt7f47Hm5bIZ0VR1g9nnP73kKCm2Dv70KKaOicpzCHDDQoNyMeLx-_kx-8uCI1Li150P-L26W4RIK7gNAEPo_DbAlAWD_7zP9M>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrfeehgdefjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepffdvueelffevke
 duhfetjeduffeghfettdfguedtgfdvgfeufeduheevheevkeeknecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjph
X-ME-Proxy: <xmx:FXmQZmz0SD1tY7LBCglKeb2NT-jfBtFvpwsk5iiIa-lKHp8vrh2MUA>
 <xmx:FXmQZlTefNtnmBl2pcghgUQD3XJtgXjjlI8_IMhRy9tEH6W5yubevw>
 <xmx:FXmQZha-QPIjFlYir89QKV0OUCvhLr-MJWrQQpjcM0UDzV9QzP3v8w>
 <xmx:FXmQZuREPhMnAlLiAuhpA-W8z8lrE7BaAfie3PwlbFyQy_UQt_HDTA>
 <xmx:F3mQZgfiHeRY8CQj2FD50f65lLkhqTvGMpMXIIF1y0JnwNSJVkmAJ22Q>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 11 Jul 2024 20:30:12 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2] firewire: core: move copy_port_status() helper function to
 TP_fast_assign() block
Date: Fri, 12 Jul 2024 09:30:10 +0900
Message-ID: <20240712003010.87341-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: It would be possible to put any statement in
 TP_fast_assign().
 This commit obsoletes the helper function and put its statements to
 TP_fast_assign()
 for the code simplicity. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- drivers/firewire/core-trace.c | 11 include/trace/events/firewire.h |
 15 ++++++++++----- 2 files changed, 10 insertions(+), 16 [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.152 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.152 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.152 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1sS4B8-0007qF-DT
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

It would be possible to put any statement in TP_fast_assign().

This commit obsoletes the helper function and put its statements to
TP_fast_assign() for the code simplicity.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-trace.c   | 11 -----------
 include/trace/events/firewire.h | 15 ++++++++++-----
 2 files changed, 10 insertions(+), 16 deletions(-)

diff --git a/drivers/firewire/core-trace.c b/drivers/firewire/core-trace.c
index 5acb02c18a47..b70947fc7b8d 100644
--- a/drivers/firewire/core-trace.c
+++ b/drivers/firewire/core-trace.c
@@ -10,17 +10,6 @@
 #include <trace/events/firewire.h>
 
 #ifdef TRACEPOINTS_ENABLED
-void copy_port_status(u8 *port_status, unsigned int port_capacity,
-		      const u32 *self_id_sequence, unsigned int quadlet_count)
-{
-	unsigned int port_index;
-
-	for (port_index = 0; port_index < port_capacity; ++port_index) {
-		port_status[port_index] =
-			self_id_sequence_get_port_status(self_id_sequence, quadlet_count, port_index);
-	}
-}
-
 EXPORT_TRACEPOINT_SYMBOL_GPL(isoc_inbound_single_completions);
 EXPORT_TRACEPOINT_SYMBOL_GPL(isoc_inbound_multiple_completions);
 EXPORT_TRACEPOINT_SYMBOL_GPL(isoc_outbound_completions);
diff --git a/include/trace/events/firewire.h b/include/trace/events/firewire.h
index bac9d98e88e5..b108176deb22 100644
--- a/include/trace/events/firewire.h
+++ b/include/trace/events/firewire.h
@@ -392,9 +392,6 @@ TRACE_EVENT(bus_reset_handle,
 #define PHY_PACKET_SELF_ID_GET_INITIATED_RESET(quads)	\
 	((((const u32 *)quads)[0] & SELF_ID_ZERO_INITIATED_RESET_MASK) >> SELF_ID_ZERO_INITIATED_RESET_SHIFT)
 
-void copy_port_status(u8 *port_status, unsigned int port_capacity, const u32 *self_id_sequence,
-		      unsigned int quadlet_count);
-
 TRACE_EVENT(self_id_sequence,
 	TP_PROTO(unsigned int card_index, const u32 *self_id_sequence, unsigned int quadlet_count, unsigned int generation),
 	TP_ARGS(card_index, self_id_sequence, quadlet_count, generation),
@@ -407,8 +404,16 @@ TRACE_EVENT(self_id_sequence,
 	TP_fast_assign(
 		__entry->card_index = card_index;
 		__entry->generation = generation;
-		copy_port_status(__get_dynamic_array(port_status), __get_dynamic_array_len(port_status),
-				 self_id_sequence, quadlet_count);
+		{
+			u8 *port_status = __get_dynamic_array(port_status);
+			unsigned int port_index;
+
+			for (port_index = 0; port_index < __get_dynamic_array_len(port_status); ++port_index) {
+				port_status[port_index] =
+					self_id_sequence_get_port_status(self_id_sequence,
+									 quadlet_count, port_index);
+			}
+		}
 		memcpy(__get_dynamic_array(self_id_sequence), self_id_sequence,
 					   __get_dynamic_array_len(self_id_sequence));
 	),
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
