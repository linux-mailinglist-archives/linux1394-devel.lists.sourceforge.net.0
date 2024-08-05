Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E53947797
	for <lists+linux1394-devel@lfdr.de>; Mon,  5 Aug 2024 10:54:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1satTw-000675-24;
	Mon, 05 Aug 2024 08:54:19 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1satTv-00066v-3R
 for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i+Ir2QJeVdEs1CTqER7N3iE55rTpvUreoCyf0MkTYpY=; b=M0uZLKp/soCuGDhwTf48mrcJKH
 ztT+VC5mmSMxURuVrC6aOyUSMCI0h3zl3b3xc244cK13D9mffAsRBDtCGKiurOOVXbJ10Qi0NOLLq
 0gMZHDyHeS/AHHtBVLRPAQvebWGCSEJjNW8X7HsSEnPEwVhwDlLsc+7Kt2OETj9MI668=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=i+Ir2QJeVdEs1CTqER7N3iE55rTpvUreoCyf0MkTYpY=; b=A
 3btcWu2UV9dSxoeg5DK0Fu0UBOrqfcIT6SdbFfVnvTB/toXd8nIeUFC1xKZiYrPwGEyyawa2EcQuz
 eboFi8Bxha5dL1uMHzqwj3j4TC0/61m0Nu8JyFUkvdHa6Vymd/+y5bO1ejMGX1vBSXQh8EBLxRfOy
 HkJJXgesTFjJCIhY=;
Received: from fout7-smtp.messagingengine.com ([103.168.172.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1satTt-0002o0-J6 for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:18 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailfout.nyi.internal (Postfix) with ESMTP id F3AC9138FDDF;
 Mon,  5 Aug 2024 04:54:11 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Mon, 05 Aug 2024 04:54:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm3; t=1722848051; x=1722934451; bh=i+Ir2QJeVd
 Es1CTqER7N3iE55rTpvUreoCyf0MkTYpY=; b=D23uQAm7Gbv3zbKOO8lRbv+pGT
 gGQ6xvSnbrHOvSiG1KTLeGb7DqpsQBFp9KSKatziSelem+t89C69UzBzFH20QtZ7
 +foZDEdeDpaGTglGqCVjqFPLzQQ4djGDimIcsjhoalHA/gFjMhoK12PfXQ+wJ8MD
 TD1pGPM9bmMq4p3lYpJ9hQP2VKnMfP1mBDh2QOqmneYhVM35Uc2Za87tZDdxjIJ9
 9FgjuITAw4yDQgkWDEpfvJjuweZ5+ZOp1BM7+rUb3QJF6ZK1/+HaVVSkZ2Xjan0+
 hkqoFaIz32v4XY50F9CJxPiBnSRutzvwR+8pPo/vQTnAD6e9YQGSx1oaOBuw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1722848051; x=1722934451; bh=i+Ir2QJeVdEs1CTqER7N3iE55rTp
 vUreoCyf0MkTYpY=; b=NV+YLifkCajeOllmhIeuDqu5/SMX9qXf76V+O2A+MfrK
 eyOnnQABck3KTZah3UI1VSyXNkvx/lvjTowbaJypiqf4Lo9rNxaZp7U4YSvC3DeJ
 Gj7mcyEf3qFbSlY8Bc2h7zU7yPElSzIhR+W8WqZieCn6W/Yy75CK9NYpxpFEh8SJ
 Od5AFwrWbKtIPwMnKe0k0bdcnuhglr3qXmKnrsoa434KG2b9UlSbIbYmgrVIhIXm
 PJtqNhrUcXMShLmu9OdvFEMTCcVF6UYiQoZSX+ywPKXaC0/HOXzPTR3waF2v7oTr
 Pyzqzs04JhKNS3iCvts5r2dFIteZUfOR8h0CsdNnYw==
X-ME-Sender: <xms:M5OwZjUInO545kkjCYrLdqyLXXMDEh-yzLCZxY9ES1eqgB4eJc-KVw>
 <xme:M5OwZrk4oZYpd_m30sP4YXxxjXtb_ivzIcchoOK4dxZyDeV4x5mNaJAqy_oDQ0eyV
 H6mi4T1vAjAJzekKYM>
X-ME-Received: <xmr:M5OwZva0h6tpotlik70eS4WhnkvI8ltzvzDhuCy_EBPlZ5qlxI_b69CoNi4IPIx1dFPgxVItJmlJXKAxFADXWH43uUGsVbMl9gDyCZXUXM0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeeigddutdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepgefgheelheejie
 elheevfeekhfdtfeeftdefgefhkeffteduveejgeekvefhvdeunecuffhomhgrihhnpehk
 vghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgt
 phhtthhopedt
X-ME-Proxy: <xmx:M5OwZuV8CGGKHzXJktg2m65pe-vOB5h3UAgJTMwF9fP2E9tI9UIQ9g>
 <xmx:M5OwZtmvMuYaNoMjZYGCgPJiT5UJ7Tz-y_5kmJsnRQ_dY9T85nqRRg>
 <xmx:M5OwZrdxhFgixsfhZdataRju4jxB--DXJP6HddoOHSAS3f_7Pxs1xQ>
 <xmx:M5OwZnFm4KcJSLlPmL1NGMIbiw5ZChd6QAuzuvRRT-MqnIPLGmtSRQ>
 <xmx:M5OwZix_6BWh9t5Ggd5Q-BRmY6FhEZHP55F48h-S8xUqtC8i9-gjRvin>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 5 Aug 2024 04:54:10 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2 00/17] firewire: core/ohci: use guard macro for any type of
 lock primitives
Date: Mon,  5 Aug 2024 17:53:51 +0900
Message-ID: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, This patchset is a revised version of the previous one.
 https://lore.kernel.org/lkml/20240804130225.243496-1-o-takashi@sakamocchi.jp/
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
 [103.168.172.150 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.150 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.150 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1satTt-0002o0-J6
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

Hi,

This patchset is a revised version of the previous one.

https://lore.kernel.org/lkml/20240804130225.243496-1-o-takashi@sakamocchi.jp/

The guard macro was firstly introduced in v6.5 kernel, and already
available for spin_lock, mutex, RCU, and R/W semaphore. It is useful to
ensure releasing lock in block.

This patchset includes changes to replace lock/release codes with the guard
macro.

* Changes in v2:
  * use scoped_guard() instead of guard() just after label so that
    statements are expanded there instead of declarations.

Takashi Sakamoto (17):
  firewire: core: use guard macro to maintain static packet data for phy
    configuration
  firewire: core: use guard macro to maintain the list of card
  firewire: core: use guard macro to maintain the list of cdev clients
  firewire: ohci: use guard macro to serialize accesses to phy registers
  firewire: core: use guard macro to maintain RCU scope for transaction
    address handler
  firewire: core: use guard macro to access to IDR for fw_device
  firewire: core: use guard macro to maintain the list of address
    handler for transaction
  firewire: core: use guard macro to disable local IRQ
  firewire: core: use guard macro to maintain list of events for
    userspace clients
  firewire: core: use guard macro to maintain IDR of isochronous
    resources for userspace clients
  firewire: core: use guard macro to maintain isochronous context for
    userspace client
  firewire: core: use guard macro to maintain list of receivers for phy
    configuration packets
  firewire: core: use guard macro to maintain list of asynchronous
    transaction
  firewire: core: use guard macro to maintain properties of fw_card
  firewire: ohci: use guard macro to maintain bus time
  firewire: ohci: use guard macro to maintain image of configuration ROM
  firewire: ohci: use guard macro to serialize operations for
    isochronous contexts

 drivers/firewire/core-card.c        |  60 ++---
 drivers/firewire/core-cdev.c        | 252 ++++++++----------
 drivers/firewire/core-device.c      |  83 +++---
 drivers/firewire/core-iso.c         |   5 +-
 drivers/firewire/core-topology.c    |   5 +-
 drivers/firewire/core-transaction.c | 146 ++++------
 drivers/firewire/ohci.c             | 399 ++++++++++++----------------
 7 files changed, 403 insertions(+), 547 deletions(-)

-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
