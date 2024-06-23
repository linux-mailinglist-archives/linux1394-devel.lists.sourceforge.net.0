Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B9453913ED5
	for <lists+linux1394-devel@lfdr.de>; Mon, 24 Jun 2024 00:09:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sLVOn-0005oL-0z;
	Sun, 23 Jun 2024 22:09:25 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sLVOm-0005oA-3k
 for linux1394-devel@lists.sourceforge.net;
 Sun, 23 Jun 2024 22:09:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o6KF/Qat9pVrpE9/pXeE4DRfuJY+mnOlsa6Bs6Hh1zo=; b=OW76JWfdDWn+ez9/XqPdAFzC7O
 lPRagj65zRccvn95LYgkwfKQDXI59myE9/sY4dubx4FUCmBN8YSGsEHOa2fD8qragZlgEU1mo6RWf
 DpS9R6+8U65mDGXTpmiJ0b6d10mvpxEBpZdqlZxUTwD0lC4D16VuzPszw9fH8sp+4HVE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=o6KF/Qat9pVrpE9/pXeE4DRfuJY+mnOlsa6Bs6Hh1zo=; b=m0btnIzW2t1340ZQ/2JDOy8/QQ
 RgBo7Y88vkupitSj8hrEYQMLbO1GbMX+Y9Se+TltbSiC1nAsKobrL5nUNr1bJW0uyRbx1TU/K6GtA
 yXMVF21Nw5M0AKKG8QxREuY9/NnnT5G/8SCoMAiNCMgFYNeD/RQDKmrw3/nUMVVyjQAg=;
Received: from fhigh6-smtp.messagingengine.com ([103.168.172.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sLVOm-0002Kt-GH for linux1394-devel@lists.sourceforge.net;
 Sun, 23 Jun 2024 22:09:24 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 1D524114008B;
 Sun, 23 Jun 2024 18:09:13 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute7.internal (MEProxy); Sun, 23 Jun 2024 18:09:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1719180553; x=
 1719266953; bh=o6KF/Qat9pVrpE9/pXeE4DRfuJY+mnOlsa6Bs6Hh1zo=; b=j
 Z0p9enbC++IesQkkK4n53WT2rju4d84i1uRfEnKjIMJ+U6My+I+qO1Z8sKC/R9FT
 qGJjNfuTrUPfYXZ4cE2vjkikjfr9CyNcPlnvbnyF5GMWPx0cqGtn3fG1rgMiLQWe
 CxB7cimW7DDlRJEAyt+cbLcFemmrJT5kxR/ql2XlqrP/fspo8Wsn9wxSom1nEmPt
 ESxdO6ozW9r32/RnTQRgjOdIbMiJP5FJHqwrvh2qLkvScs9+K9+HEHNzH9rHb49q
 ZYXvBn3KqIw0OOhTlg9ZwhIuqLcwL/NvR9IMCPtfCSqMn1hhoBg/v8e0uAdJQjWL
 8uvtVe5B49hqekYEYTMTA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1719180553; x=
 1719266953; bh=o6KF/Qat9pVrpE9/pXeE4DRfuJY+mnOlsa6Bs6Hh1zo=; b=b
 KKjYlbXe54YocNlVVbRXW/B9uK1ZteP57FpMWXZYIwBSVioB6Be4MxrG2OfGYiMg
 YlsEKLw316O7f9yIcxWwj8K5IdKIDwkjC2rE7MWS49j8G3eZWiXIi0HCH5kK0rTF
 29vq2bEBoK6bZeb+aM0z+di4/Kolfz/tHZWaqoJdthSwwvv3IOxpofef+X1ssR6v
 pYvq/GbaupJzf6sMQvEWpqcYphwgqewNYBvwp+dOrcNudZvjzfK/mU27PfRxlgv9
 a59M6X82A9dCQrMnmr5vOStKUX05WYGr2jLOb/orHl7aWTXC6deWpE+a7QnuKLZH
 pR9FSDWj1fSiauG7IpNEg==
X-ME-Sender: <xms:CJ14ZhjE5rd1JIfzVhu2C-mLrmEXgSU-Qn_Cwy6VX-rPftV1YaqUIg>
 <xme:CJ14ZmAqhX--9u69QP_p93DJExYhf9NYRnzKVw9ChBhMvm-XHzR9wFYRy86pqUi-8
 FrNelm_AhME3NPrb2Y>
X-ME-Received: <xmr:CJ14ZhGjpTfPmEni1b7MqHycnmAJQqylT9VxSwagGMUTK25umhbzn6NlsE5l0Y7wpTIuum-JbAdms1TH_CMS1mNDYHoioiB4o1CFl3SvcM4C>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfeegtddgtdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:CJ14ZmQgl9j3jM12Ql-57iPcznTFLvk7mUaU50bJOukLPXiqrOIxxA>
 <xmx:CJ14Zuxm5s92IzN3bMUdUFPNPMGCXyVHS--uUyEuULN-b5wu8wXAjg>
 <xmx:CJ14Zs52CJAHcXWhbOASmIfY27_U6JE-BpJjziLCaOnvVkMRbFkj1g>
 <xmx:CJ14Zjw73YriHmp72e5rnx9voBlxc7N9m-Eg7os_GyEepHZadh19_Q>
 <xmx:CZ14Zp_lhhfdvkKveH2nTZzrIGcbiYMmzKYJ5fx3OeLSHSf1YtXiK2OL>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 23 Jun 2024 18:09:11 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 5/7] firewire: core: add tracepoints events for flushing
 completions of isochronous context
Date: Mon, 24 Jun 2024 07:08:56 +0900
Message-ID: <20240623220859.851685-6-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240623220859.851685-1-o-takashi@sakamocchi.jp>
References: <20240623220859.851685-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: It is helpful to trace the flushing completions of
 isochronous
 context when the core function is requested them by both in-kernel unit
 drivers
 and userspace applications. This commit adds some tracepoints events for
 the aim. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.157 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.157 listed in bl.score.senderscore.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1sLVOm-0002Kt-GH
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

It is helpful to trace the flushing completions of isochronous context when
the core function is requested them by both in-kernel unit drivers and
userspace applications.

This commit adds some tracepoints events for the aim.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-iso.c     |  4 ++++
 drivers/firewire/ohci.c         |  2 ++
 include/trace/events/firewire.h | 36 +++++++++++++++++++++++++++++++++
 3 files changed, 42 insertions(+)

diff --git a/drivers/firewire/core-iso.c b/drivers/firewire/core-iso.c
index 5bad23fcce0c..93ca0dec1805 100644
--- a/drivers/firewire/core-iso.c
+++ b/drivers/firewire/core-iso.c
@@ -207,6 +207,10 @@ EXPORT_SYMBOL(fw_iso_context_queue_flush);
 
 int fw_iso_context_flush_completions(struct fw_iso_context *ctx)
 {
+	trace_isoc_outbound_flush_completions(ctx);
+	trace_isoc_inbound_single_flush_completions(ctx);
+	trace_isoc_inbound_multiple_flush_completions(ctx);
+
 	return ctx->card->driver->flush_iso_completions(ctx);
 }
 EXPORT_SYMBOL(fw_iso_context_flush_completions);
diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 1f6097a6366c..f35d6e193bcb 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -43,6 +43,8 @@
 #include "packet-header-definitions.h"
 #include "phy-packet-definitions.h"
 
+#include <trace/events/firewire.h>
+
 #define ohci_info(ohci, f, args...)	dev_info(ohci->card.device, f, ##args)
 #define ohci_notice(ohci, f, args...)	dev_notice(ohci->card.device, f, ##args)
 #define ohci_err(ohci, f, args...)	dev_err(ohci->card.device, f, ##args)
diff --git a/include/trace/events/firewire.h b/include/trace/events/firewire.h
index b404e6324671..ad1546120aa3 100644
--- a/include/trace/events/firewire.h
+++ b/include/trace/events/firewire.h
@@ -706,6 +706,42 @@ DEFINE_EVENT_CONDITION(isoc_flush_template, isoc_inbound_multiple_flush,
 	TP_CONDITION(ctx->type == FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL)
 );
 
+DECLARE_EVENT_CLASS(isoc_flush_completions_template,
+	TP_PROTO(const struct fw_iso_context *ctx),
+	TP_ARGS(ctx),
+	TP_STRUCT__entry(
+		__field(u64, context)
+		__field(u8, card_index)
+	),
+	TP_fast_assign(
+		__entry->context = (uintptr_t)ctx;
+		__entry->card_index = ctx->card->index;
+	),
+	TP_printk(
+		"context=0x%llx card_index=%u",
+		__entry->context,
+		__entry->card_index
+	)
+);
+
+DEFINE_EVENT_CONDITION(isoc_flush_completions_template, isoc_outbound_flush_completions,
+	TP_PROTO(const struct fw_iso_context *ctx),
+	TP_ARGS(ctx),
+	TP_CONDITION(ctx->type == FW_ISO_CONTEXT_TRANSMIT)
+);
+
+DEFINE_EVENT_CONDITION(isoc_flush_completions_template, isoc_inbound_single_flush_completions,
+	TP_PROTO(const struct fw_iso_context *ctx),
+	TP_ARGS(ctx),
+	TP_CONDITION(ctx->type == FW_ISO_CONTEXT_RECEIVE)
+);
+
+DEFINE_EVENT_CONDITION(isoc_flush_completions_template, isoc_inbound_multiple_flush_completions,
+	TP_PROTO(const struct fw_iso_context *ctx),
+	TP_ARGS(ctx),
+	TP_CONDITION(ctx->type == FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL)
+);
+
 #undef QUADLET_SIZE
 
 #endif // _FIREWIRE_TRACE_EVENT_H
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
