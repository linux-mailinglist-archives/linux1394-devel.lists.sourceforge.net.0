Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 104D78FDAE2
	for <lists+linux1394-devel@lfdr.de>; Thu,  6 Jun 2024 01:52:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sF0Qf-0002Dt-57;
	Wed, 05 Jun 2024 23:52:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sF0Qd-0002DT-FC
 for linux1394-devel@lists.sourceforge.net;
 Wed, 05 Jun 2024 23:52:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YhYZ47zvMT0a++wOZL0Bg5VQ35AEPyrocZUAtMVjskY=; b=IInsHdgvJ+ik8z/jhSaJ+rnct/
 ejGFtGffNVSU9oKPO6xEZnZlOFAdIVwrLX/EleCsL6GlIXX5euRvNo0NRKg1wTKFH02nqhE7JwD1c
 UtHwJ5O9eYGmpmQGzIOMjtPnXG5uVwCZYuXwi3c90FRT18hloOR5FWAB/jx1W+Y/MKKs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YhYZ47zvMT0a++wOZL0Bg5VQ35AEPyrocZUAtMVjskY=; b=AKb77NKMbwJTghlj8g5ri7/19p
 QqIy37SZi948eL1cF6AbdNlDiEQ2EfeEXKBznEB6xyTJp4J+Xant0KoZ0E1C04uFhExTXA9VPYNsT
 ZLZpy1FFmIiqlmuCzsgXh7sW1JWcO6y+a6OGVlk8wU0syt2mra+9qI8pcVEqFhHOAwz8=;
Received: from wfout2-smtp.messagingengine.com ([64.147.123.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sF0Qd-0004Z5-Us for linux1394-devel@lists.sourceforge.net;
 Wed, 05 Jun 2024 23:52:27 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailfout.west.internal (Postfix) with ESMTP id A0F5A1C0012D;
 Wed,  5 Jun 2024 19:52:21 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 05 Jun 2024 19:52:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1717631541; x=
 1717717941; bh=YhYZ47zvMT0a++wOZL0Bg5VQ35AEPyrocZUAtMVjskY=; b=T
 n6ON1w/AwhxRzf+DZ/QDpnuw3B0iIIohQ+0qh077GAnHcDCrVdhgK9PHv6QWVZ+r
 pCNDZI0KKG6EWKO1zG/ZaYoR6xsJZR2MRaHlx26kxs6CFzL6BaTBC59GD21DX5OB
 HqioJREy9QvtypYftr/HhmPeyTUb/X6TBt9MYRzvL3s7RFkCK6TMr92nvAtonRzk
 HxFdeeGYJ1KJW8pWLsdhVLE0Q0ijjmlABAQhh1q43zyxTsh61FBc3qc6kNHMARoo
 av6FkINNMNd77iaAFVMFczD8JptWJleMPNSLor/luMCrKu7GTZeCjakgtNLeKz0N
 dTzvZMEByirtfAJHVnvHg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1717631541; x=
 1717717941; bh=YhYZ47zvMT0a++wOZL0Bg5VQ35AEPyrocZUAtMVjskY=; b=a
 +HznjbhNUem4NAKdtGW9Z32SAXA2FvtxaWb4kBPp2FX5fItTpE0j9wdSfzbzCJ4z
 7LSxqvB9pjqq2DuPuJb2rhsetANCOwB5HIxknYJ84TDyqRhQAcSZtiQrismixaLI
 dCGGiT/1g9AKhHjKSYA5I58HaCtzRQGBcd5u171fTG9EopQL4XjWClZM38VgAnmz
 udKmz9GmsGOuGB6RhUEtGnrIkmeMqCpRU2VwA1zwDJ8yCULeC5GHkPIP1NIOfanC
 xCuxAU1h3I6jcKzqFfK5++GsLaGQ3xMe+c9SR98W5EbeAUe0CpY3vyMff9FVObB5
 Pl0KnFNXTyfc1FQ31mZjQ==
X-ME-Sender: <xms:NfpgZm9J_Byplo9Ngx7q_N6xKm05DeNYrikzYTrka5HA4HSAIM1Mvg>
 <xme:NfpgZmsarz2Te0JrY82K-Hes5BCr1XzxuW_N_edS8M1N6CmYtX2I0KZgRePEJXkSU
 YVXwNk9ImnvPHeGxA4>
X-ME-Received: <xmr:NfpgZsC5TrHtEpvPPcfNUECPtdRuUGoEO_7ZC0Q3wXswHPNAByDhOlJzxTKIjcFNWVoHs_RkK5eJZsI2WW-Ihon7LV8UJPt-wD-R24A8264NzA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdeljedgvdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpeegnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:NfpgZucCSztJWvLbmceybKhp_1ibNbXiXVy43yndREXSjZMYXDcO3A>
 <xmx:NfpgZrOKw96zUBnOfX2OE-K66XhnRl4pjiVRzEvIE-N5LqudOwrfIQ>
 <xmx:NfpgZol8yR_uTUZYP6bsG3u-bTQKbfPafE7FSUsIlh9BWezVdSHQjg>
 <xmx:NfpgZtutlp26jzqV15K18_T_OPiPLO5B1ME5pt5b0DBe-Fza8CDMuA>
 <xmx:NfpgZkYbBCBfJSt1An7i-D-8Or6MBEc_PUkYgnXbSLCxyBHR5ALrT7w7>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 5 Jun 2024 19:52:20 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 10/11] firewire: core: arrangement header inclusion for
 tracepoints events
Date: Thu,  6 Jun 2024 08:51:54 +0900
Message-ID: <20240605235155.116468-11-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240605235155.116468-1-o-takashi@sakamocchi.jp>
References: <20240605235155.116468-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  It is a bit inconvenient to put the relative path to local
 header from tree-wide header. This commit delegates the selection to include
 headers into users. Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
 --- drivers/firewire/core-trace.c | 3 +++ drivers/firewire/core-transaction.c
 | 2 +- drivers/firewire/packet-header-definitions.h | 2 ++ inclu [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [64.147.123.145 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [64.147.123.145 listed in bl.score.senderscore.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [64.147.123.145 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sF0Qd-0004Z5-Us
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

It is a bit inconvenient to put the relative path to local header from
tree-wide header.

This commit delegates the selection to include headers into users.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-trace.c                | 3 +++
 drivers/firewire/core-transaction.c          | 2 +-
 drivers/firewire/packet-header-definitions.h | 2 ++
 include/trace/events/firewire.h              | 2 +-
 4 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/firewire/core-trace.c b/drivers/firewire/core-trace.c
index 96cbd9d384dc..7cbf850f3719 100644
--- a/drivers/firewire/core-trace.c
+++ b/drivers/firewire/core-trace.c
@@ -1,5 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 // Copyright (c) 2024 Takashi Sakamoto
 
+#include <linux/types.h>
+#include "packet-header-definitions.h"
+
 #define CREATE_TRACE_POINTS
 #include <trace/events/firewire.h>
diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index 571fdff65c2b..6868ff17dc10 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -29,8 +29,8 @@
 #include <asm/byteorder.h>
 
 #include "core.h"
-#include <trace/events/firewire.h>
 #include "packet-header-definitions.h"
+#include <trace/events/firewire.h>
 
 #define HEADER_DESTINATION_IS_BROADCAST(header) \
 	((async_header_get_destination(header) & 0x3f) == 0x3f)
diff --git a/drivers/firewire/packet-header-definitions.h b/drivers/firewire/packet-header-definitions.h
index ab9d0fa790d4..87a5a31845c3 100644
--- a/drivers/firewire/packet-header-definitions.h
+++ b/drivers/firewire/packet-header-definitions.h
@@ -7,6 +7,8 @@
 #ifndef _FIREWIRE_PACKET_HEADER_DEFINITIONS_H
 #define _FIREWIRE_PACKET_HEADER_DEFINITIONS_H
 
+#include <linux/types.h>
+
 #define ASYNC_HEADER_QUADLET_COUNT		4
 
 #define ASYNC_HEADER_Q0_DESTINATION_SHIFT	16
diff --git a/include/trace/events/firewire.h b/include/trace/events/firewire.h
index d695a560673f..1f4ef0ed65bc 100644
--- a/include/trace/events/firewire.h
+++ b/include/trace/events/firewire.h
@@ -11,7 +11,7 @@
 
 #include <linux/firewire-constants.h>
 
-#include "../../../drivers/firewire/packet-header-definitions.h"
+// Some macros are defined in 'drivers/firewire/packet-header-definitions.h'.
 
 // The content of TP_printk field is preprocessed, then put to the module binary.
 #define ASYNC_HEADER_GET_DESTINATION(header)	\
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
