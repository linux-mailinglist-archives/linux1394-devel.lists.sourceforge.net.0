Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4D7915D48
	for <lists+linux1394-devel@lfdr.de>; Tue, 25 Jun 2024 05:18:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sLwhH-0000Ng-TQ;
	Tue, 25 Jun 2024 03:18:20 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sLwhG-0000NP-FJ
 for linux1394-devel@lists.sourceforge.net;
 Tue, 25 Jun 2024 03:18:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qyMxsdeLKsqCGO0IclrxiE5v5YNdkTFLsy/E7mJ/uUg=; b=jE1WLUCz87EpIFGY7KLPyiN9qu
 pRwx+8X8XeVDUaeDMaEwuXyvpvnn3NtXHSAlJpaxNSsovWDFu92Udrkfw1PjtYKf452020nnfodRy
 nVeUrxZYfAOHpu5/yK+inEjJzCtuOIhxSPbPVejNL72rhdn2BjjRrIGzD5oZrCCRi9Ls=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qyMxsdeLKsqCGO0IclrxiE5v5YNdkTFLsy/E7mJ/uUg=; b=BBx+GtaWG3UHkRUyaf3HU517zH
 ZhQvYnpFkiFQppvDXktJWZpc2a1hjNOwsEFywny5rBCX8p5j6S85QsGsgU9LI8Tax4vd0Q1wylByZ
 ZNgk41azZw/tAR1tbgzAy3744kiZdbWbdu/nQc28QasXJDaluf0bv75M4gy9cB/ILTDw=;
Received: from fout3-smtp.messagingengine.com ([103.168.172.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sLwhG-00021p-NY for linux1394-devel@lists.sourceforge.net;
 Tue, 25 Jun 2024 03:18:18 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailfout.nyi.internal (Postfix) with ESMTP id 65129138010C;
 Mon, 24 Jun 2024 23:18:12 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Mon, 24 Jun 2024 23:18:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1719285492; x=
 1719371892; bh=qyMxsdeLKsqCGO0IclrxiE5v5YNdkTFLsy/E7mJ/uUg=; b=G
 ATYDxwhaC5NqW6UoBKFb3sE2bJTcKr/XOjZMHEN3vunVgg16/MmzUmNR3+qpDsHU
 Ralpauz1yURTIYBUUzJaEvg47s5oCfy6G2u1FUT/e+APm69MpA8V2RsqI3pp2mnF
 fX8hBf2QrVckwEQBSd0pRfK+ueVfa9KnyUHOLfyCStwaCTk5M0clwBkTSzv44ZYv
 A7wXPQecCXA7mcz/yFnblj0sxyhcNOmWpS4n9mYd/BvOm/A7Bz8FqZPYr8OSwNO5
 an334WTdWW82/5/dVo9WT3DB0du4Xz3EvvELlAeGQmOCBE015gXVaU1CGClKqMs/
 xX8IA1mpEPnd55/RZDWng==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1719285492; x=
 1719371892; bh=qyMxsdeLKsqCGO0IclrxiE5v5YNdkTFLsy/E7mJ/uUg=; b=J
 nhrGf2WJ/m0L+duIjxZyGDf8ToJ0y6Y94INd2My6VKG15cOi3x3/66TXSKVGUd/l
 6Ft2nI7mFI3UHfUoHjQQqorl5liK6caQNgwmbMcEFgvQLD5wJ4rXH1QXG8edJdqY
 eZoN8f7W6Y59G4zKk9AMLzJE55x6fL5wv+3mKDkVr8+AQ9ekdtcrXKp7LtQsm2cy
 CTMaYAxh9/1UQA5IKRfqqof3AjC90bCD0FCp6NlFl3soMb421PzdrBmaODFGHiZP
 X3LrcLXqzl/wQaFGKDOJuIltYhLO6NFRNeb7DxJfT2Uz/GTfZ2O+BZE3rAskYkWJ
 dmmzHX0cY/WSa5Jn6qvHA==
X-ME-Sender: <xms:9DZ6ZrJ--UUFpMQXZ4DooUjAX9VnvNHsDWXR9-_M0HVVEY1yI02Xxw>
 <xme:9DZ6ZvL5HGNaLQ_tyNcJmc28FdBavMjmDAalZAppaTxGFcTpki8N6L0ArEt602Vnv
 TgRcVqInhep-aaWsOs>
X-ME-Received: <xmr:9DZ6ZjswXnpnWeQpCGz4mZSF5kkY9iA_UPBqGugDuaq68MkFwc-X9sw00W3DGFRF3VerrKOKVK3ACf2S2Jig0gaPRSAlnglT74XDh3EaC6q48w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfeegvddgjeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:9DZ6Zkb3tp57OMrWt7sTBqYvewaJr0aoEBejBVLkSHKoz2GmqXsdaQ>
 <xmx:9DZ6Zibx29qz6R2HmeFOxbMhTcxtxGNzF9B9NDVURBAyvX_B0QDb2A>
 <xmx:9DZ6ZoBtPI7ydY9aCO1X0VyiyGhfzCY3GD3zFNwmHHUv5S_D0jKhag>
 <xmx:9DZ6ZgYxuT63roNZOjTKQbEbPnf1eAY4vUOMrkKdzp2q6H91jHN4VA>
 <xmx:9DZ6Zhm9aQJlLhdjfHO8N-eoNwcTfXivAjSx5nqqKKg9BXag9VsQjbLM>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 24 Jun 2024 23:18:11 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 1/2] firewire: ohci: add support for Linux kernel tracepoints
Date: Tue, 25 Jun 2024 12:18:05 +0900
Message-ID: <20240625031806.956650-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240625031806.956650-1-o-takashi@sakamocchi.jp>
References: <20240625031806.956650-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The Linux Kernel Tracepoints framework is enough useful to
 trace the interaction between 1394 OHCI hardware and its driver. This commit
 adds firewire_ohci subsystem to use the framework. It is defined as the
 different
 subsystem from the existing firewire subsystem. The definition file for the
 existing subsystem is slightly [...] 
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
 for more information. [103.168.172.146 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.146 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.146 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1sLwhG-00021p-NY
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

The Linux Kernel Tracepoints framework is enough useful to trace the
interaction between 1394 OHCI hardware and its driver.

This commit adds firewire_ohci subsystem to use the framework. It is
defined as the different subsystem from the existing firewire subsystem.
The definition file for the existing subsystem is slightly changed so that
both subsystems are available in 1394 OHCI driver.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c              |  3 +++
 include/trace/events/firewire.h      |  1 +
 include/trace/events/firewire_ohci.h | 16 ++++++++++++++++
 3 files changed, 20 insertions(+)
 create mode 100644 include/trace/events/firewire_ohci.h

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index bdb206157118..07adb4ddd444 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -45,6 +45,9 @@
 
 #include <trace/events/firewire.h>
 
+#define CREATE_TRACE_POINTS
+#include <trace/events/firewire_ohci.h>
+
 #define ohci_info(ohci, f, args...)	dev_info(ohci->card.device, f, ##args)
 #define ohci_notice(ohci, f, args...)	dev_notice(ohci->card.device, f, ##args)
 #define ohci_err(ohci, f, args...)	dev_err(ohci->card.device, f, ##args)
diff --git a/include/trace/events/firewire.h b/include/trace/events/firewire.h
index d9158a134beb..aa00c9f33551 100644
--- a/include/trace/events/firewire.h
+++ b/include/trace/events/firewire.h
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 // Copyright (c) 2024 Takashi Sakamoto
 
+#undef TRACE_SYSTEM
 #define TRACE_SYSTEM	firewire
 
 #if !defined(_FIREWIRE_TRACE_EVENT_H) || defined(TRACE_HEADER_MULTI_READ)
diff --git a/include/trace/events/firewire_ohci.h b/include/trace/events/firewire_ohci.h
new file mode 100644
index 000000000000..67fa3c1c8f6d
--- /dev/null
+++ b/include/trace/events/firewire_ohci.h
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// Copyright (c) 2024 Takashi Sakamoto
+
+#undef TRACE_SYSTEM
+#define TRACE_SYSTEM	firewire_ohci
+
+#if !defined(_FIREWIRE_OHCI_TRACE_EVENT_H) || defined(TRACE_HEADER_MULTI_READ)
+#define _FIREWIRE_OHCI_TRACE_EVENT_H
+
+#include <linux/tracepoint.h>
+
+// Placeholder for future use.
+
+#endif // _FIREWIRE_OHCI_TRACE_EVENT_H
+
+#include <trace/define_trace.h>
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
