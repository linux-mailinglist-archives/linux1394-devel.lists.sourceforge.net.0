Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5D5970505
	for <lists+linux1394-devel@lfdr.de>; Sun,  8 Sep 2024 06:06:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sn9Bi-0000Ka-Tl;
	Sun, 08 Sep 2024 04:06:10 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sn9Bh-0000KS-7f
 for linux1394-devel@lists.sourceforge.net;
 Sun, 08 Sep 2024 04:06:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sD37MHZf8jsc9U1uEE8jgarcJ/ogTmY9ratxghKpm6E=; b=AJDZIejjYx5v97rvpnRM1NTxWo
 MyinauvvAp0q4FJlcUIzotF36zEGYuHuXVzRz02I55CnJKL66THFVlXVKVWOD/+8RBgaV5K8t3LW3
 CPVYMmciuDFyi69VhKnK5gLgcm4u/BGLd0Ml1eQHttOCQx2Rf1R1WDzKI0INZJlbqtII=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=sD37MHZf8jsc9U1uEE8jgarcJ/ogTmY9ratxghKpm6E=; b=n
 WRUponBTRrEnV4m+rlB5hJiLqnLMToqKhMOX0odANGJ5DCkeDnbvnXBjpT8CKZgDh/CZKP7e3XkzN
 FwSiB3oWA9pMcRnAQ+mlEZap1mcORaPpF/eSUlj96M/A4JcnliqiP5cv2Z4IDARl/4peRRurj+zFf
 e3SrTOdNrcxbagCk=;
Received: from fout2-smtp.messagingengine.com ([103.168.172.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sn9Bc-0000WL-DP for linux1394-devel@lists.sourceforge.net;
 Sun, 08 Sep 2024 04:06:08 +0000
Received: from phl-compute-11.internal (phl-compute-11.phl.internal
 [10.202.2.51])
 by mailfout.phl.internal (Postfix) with ESMTP id C8BE1138029D;
 Sun,  8 Sep 2024 00:05:53 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-11.internal (MEProxy); Sun, 08 Sep 2024 00:05:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm1; t=1725768353; x=1725854753; bh=sD37MHZf8j
 sc9U1uEE8jgarcJ/ogTmY9ratxghKpm6E=; b=XD1peft/BS27DDGI2INIMD3WEG
 4kuRyB+4JOIeIX0tlyxWlF6J5U9InyWlDhH6/o0HzgTbNCJz0Ts/tLpfJTsCNnQA
 l91S7/AV37DDeFentgn5w8Wb0PveOiQ11qSxue0jpb3XhXB7mXLqY7TOHROGVSde
 I1DWcVoeCXz7MhfYsfeZqwoZpBtq5LLBENH4AK163BUvgZtEmaRY06g2C95hmmoJ
 J+M9+r70VjcFCLcyBBgtSnpqGKrkNp3aPMeSgoCDuzIcuIKIR1laNFgCRAd3fjhk
 fh0E+GE80Yhal5XL63xjf9YUB5X4aX3cbgnCLjvcOW3h0D8ObLkt+XbKGfyA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1725768353; x=1725854753; bh=sD37MHZf8jsc9U1uEE8jgarcJ/og
 TmY9ratxghKpm6E=; b=jjFXBT6uyYdBvOvFbFEnLJ8FpEkLIaZXVTn9xf4/It8g
 gU3JkZhu91MmcyLV4ejnNeklk9/09vR87lsiwnW11d5Cxnv5LZAYnvc+ZY2JwWbF
 EqsT0o3jkLYRvEt5EhhJg19ruqQmAmo8NvgWUYMy4sP3zha7jk+z7oqGicUujOFZ
 OJDnken+kTkkkIkqo5qhHTC352OM7jKXciWx/jD2RQNdLEO0mnmja0kid1vdxbpz
 upBQCUvSCk2m6IgwxwZgHVYmdQRpusCvQHm+DuYNVMf1kXMCpzws0740cYQV/8P2
 L6GJ82mAF+klj9nLWhgJRnTunU/6SkNdFq8fkppGdA==
X-ME-Sender: <xms:oSLdZkMyqby8AVn5E_dpLF2_OoVRIB2Ib9dDmVYB4GRUu4jV2APaQA>
 <xme:oSLdZq-07A79xC6jbTxwwKZFG4XKo95DJheuZhyIyFsCFR3YHyvLNeQfVibUmI55B
 G2WhF3XHF2-IaPLQzw>
X-ME-Received: <xmr:oSLdZrSA0k_xm4mf9SxpJuHCnXTByFLP2ksJf3w_3sVv6AN7ypjn7qXc3sCE3-r6sp-z9Y4fBnSRTU4dwOdAepHQTumy7GFxyaBWDSsspiUdHQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudeigedgjeelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevuf
 ffkffoggfgsedtkeertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohht
 ohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtth
 gvrhhnpeffvdeuleffveekudfhteejudffgefhtedtgfeutdfgvdfgueefudehveehveek
 keenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqd
 htrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeefpdhm
 ohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlse
 hlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidq
 khgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugi
 dqshhouhhnugesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:oSLdZsvwFR_mT_uyYuDw5NdqUJwdT7MjMV5bj5qeS3I3ksIOoioPig>
 <xmx:oSLdZsesFTQYVcfoEwf6Q9h81oVkIn7TRBWax62e8wo6EgPWppgzXg>
 <xmx:oSLdZg33zwCInR3H7R0tioR3-vKiB5RXWM5_Kg56L_DuNPKWC9Vl9g>
 <xmx:oSLdZg9wG6mxIr6UsS6Pi7BS9NkpZFlTyJsHxHM0ftn_dqbFeUJuKw>
 <xmx:oSLdZk5RyfKkQm477LpNdktX_oMBG3eTZjTUuQABtQ62Om16gDwJkMp3>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 8 Sep 2024 00:05:52 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/2] firewire: core: allow unit drivers to schedule work item
 to process isochronous context
Date: Sun,  8 Sep 2024 13:05:47 +0900
Message-ID: <20240908040549.75304-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, ALSA firewire stack uses packet-per-buffer mode for both
 isochronous receive (IR) and transmit (IT) contexts of 1394 OHCI. To process
 time stamp per packet (or per sample in some cases) steadily for m [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.145 listed in list.dnswl.org]
X-Headers-End: 1sn9Bc-0000WL-DP
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
Cc: linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

ALSA firewire stack uses packet-per-buffer mode for both isochronous
receive (IR) and transmit (IT) contexts of 1394 OHCI. To process time
stamp per packet (or per sample in some cases) steadily for media clock
recovery against unexpected transmission skips in the IR context, it uses
an IT context to operate all of isochronous contexts by calls of
fw_iso_context_flush_completions() in the bottom-half of hardIRQ for the
IT context.

Although it looks well to handle all of isochronous contexts in a single
bottom-half context, it relatively takes longer time to finish. In the
future code integration (not yet), it is possible to apply parallelism
method to process these context. In the case, it is useful to allow unit
drivers to schedule work items to process these isochronous contexts.

As a preparation, in this series of changes,
fw_iso_context_schedule_flush_completions() is exposed as a kernel API
available by unit drivers. It is a counter part of
fw_iso_context_flush_completions(). This series of changes also includes
documentation about these kernel APIs.

Takashi Sakamoto (2):
  firewire: core: expose kernel API to schedule work item to process
    isochronous context
  firewire: core: fulfill documentation of
    fw_iso_context_flush_completions()

 Documentation/driver-api/firewire.rst |  2 ++
 drivers/firewire/core-iso.c           | 11 +++++++++++
 drivers/firewire/core.h               |  5 -----
 drivers/firewire/ohci.c               |  4 ++--
 include/linux/firewire.h              | 17 +++++++++++++++++
 5 files changed, 32 insertions(+), 7 deletions(-)

-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
