Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9845592F2EA
	for <lists+linux1394-devel@lfdr.de>; Fri, 12 Jul 2024 02:04:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sS3mA-0002OA-5Y;
	Fri, 12 Jul 2024 00:04:38 +0000
Received: from [172.30.29.67] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sS3m8-0002Ny-2i
 for linux1394-devel@lists.sourceforge.net;
 Fri, 12 Jul 2024 00:04:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xLxh5fWh3umw8MBN4tpMO44IVzkrPOPO3jPeJID3dU8=; b=S5N6X9UvA2ib9BehK1xWn2n35g
 i2fg9ZWy+jApYo+1paWHQAuJC8bwH3l2qqBMTtqVVnlelIko+m9xQVEt52nNvaVVA+9rr/tF1a8zY
 Xamu5Tsmqdfm17eW22YozpYQ8ATN7qJCbqWM+q7IszuX80uL4HBbOXuqpsO4Y1A/b9rM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=xLxh5fWh3umw8MBN4tpMO44IVzkrPOPO3jPeJID3dU8=; b=g
 Opt4uy2EECcl7+jIStLr5t0eMhfb0kZ41FdD2ooIKp1d+PqFUVaFJmk4GcPLxFxGFpNbbOOPVuahh
 fDRk9VqSZ1PofWTBLO9y/L6ouGhfS9K0SIQNrvlEsxJWWmysFS+aWUEkcjdE1GX4twzsM2KR99KXB
 OQCPMbVHQL2hEuo4=;
Received: from fhigh1-smtp.messagingengine.com ([103.168.172.152])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sS3m7-0006j5-Tl for linux1394-devel@lists.sourceforge.net;
 Fri, 12 Jul 2024 00:04:36 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 893671140169;
 Thu, 11 Jul 2024 20:04:29 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Thu, 11 Jul 2024 20:04:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm2; t=1720742669; x=1720829069; bh=xLxh5fWh3u
 mw8MBN4tpMO44IVzkrPOPO3jPeJID3dU8=; b=P38/OpVc1Kt6iPQsvqYnevq5uE
 U2m7Rh0Y0v6Zp2zQEwaDnw+CCvr/o/Rz0Tf16fcfoUP/cfypr2oG8JBfCdrZsD8X
 tsayBz2mykKLfZXKUI5g8V15SxNXSSj7MPIyIzRjuM0cjmL/31bM1eHBABPvd9Sz
 /IfuV+nqQWqMHmU4p+X5efbl9O4uLPzauLBLHgmSWux5V2eiqGkP3CcU+VjrVB9B
 gCy4Iqq8lwflTC5/KshyW2qJLGePqmsk6Yi401oamyVwWZAqGKSEq7P5oIC3L+o0
 s5ELSMqk3p25XRRymoAzCUON4FCoWRQS1Nj8hmQaXMXs7PuiXFndAyLHExXQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1720742669; x=1720829069; bh=xLxh5fWh3umw8MBN4tpMO44IVzkr
 POPO3jPeJID3dU8=; b=brorJJFM9N4SMawCACEyWH5N56SVnqmjTDwn3qx8gDnb
 qKGlGAQFhpNqQYhcqrYmPuw9P7DiF0KjoniXqxvihhDAPK87aakkLXWlRHlweBLy
 eCC8KqoTRwHWUFhcqtTvYhXDPyH2BGhodVVGUEl/u/elzqCM1wlXXQ6SxPg6pAbv
 UXh27z3iXUWTBJKFlqnqJXh6ILFX6mwa4z5uPVMXTcpw8Z77Kvud1gUbtM78zO8g
 FnlZIpESPTKqxK7cSgZ6uVujw5CGq2PGVJp/VFqLezUWYyPxh3UIBZF9hEAsfvEf
 zifYIIE+hCt2XlCuqNGRcqoz/XLx2yoe6EmCGMxr5Q==
X-ME-Sender: <xms:DHOQZh4XPJBj--18bYyHqcn4jbTiIjHROv8akxoeYIfgAxurS-q0pQ>
 <xme:DHOQZu7n-AF6WO5WxZ0b6Ql3CU7vsMlCoAJcYwrCZ0fmL1aunQ6OojqEWA-C8Wob-
 vWt0BLRDyPigKn8ZqY>
X-ME-Received: <xmr:DHOQZofsIqLiK5qNW4ekWwiqlxTjfulSyyhUoD8HKzdGvK02VSDsISG8-uuXzJqp99XuriVsW5KJUMySL7pKl9fMLONJbcrM8J9_feGduJBlh08>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrfeehgdefudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepffdvueelffevke
 duhfetjeduffeghfettdfguedtgfdvgfeufeduheevheevkeeknecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjph
X-ME-Proxy: <xmx:DHOQZqJrt8xxINXCk5HRE4LZA9nmLWfnYBZkA2RPTxqVVzyXWDiswA>
 <xmx:DHOQZlIkaOY_5NghuP08w6Amx10ixVZRSTqE7jVT3gZleaqgIXaV4Q>
 <xmx:DHOQZjy_d8NjabJABpWW88rn5Q3Nfyi_iHOsO-fOPpKH_c_YdFx4Yg>
 <xmx:DHOQZhLmuZXOpfqjRWFn8AhZ2t9Ou-nuS0n-oF-gnqobYPOwdGWF3w>
 <xmx:DXOQZsWpoEx9A19WoSuzxGDhv7PwLnlpjrA_DvZFwN5znWWlym2SP0Ik>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 11 Jul 2024 20:04:27 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: core: move copy_port_status() helper function to
 TP_fast_assign() block
Date: Fri, 12 Jul 2024 09:04:24 +0900
Message-ID: <20240712000424.85124-1-o-takashi@sakamocchi.jp>
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
 12 ++++++++++-- 2 files changed, 10 insertions(+), 13 del [...] 
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
X-Headers-End: 1sS3m7-0006j5-Tl
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
 include/trace/events/firewire.h | 12 ++++++++++--
 2 files changed, 10 insertions(+), 13 deletions(-)

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
index bac9d98e88e5..57a2be01d31a 100644
--- a/include/trace/events/firewire.h
+++ b/include/trace/events/firewire.h
@@ -407,8 +407,16 @@ TRACE_EVENT(self_id_sequence,
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
