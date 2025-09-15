Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E99B56E5E
	for <lists+linux1394-devel@lfdr.de>; Mon, 15 Sep 2025 04:43:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=C22wgYjv/T2e1rhXr8y3xUQAo5tiXNpjds7cM8POrFM=; b=grG7z4eElxPLw5KUScxX9M7dwx
	nio92rvg6WBAtnqlhqvX2YWsDOsT4qHBS2XZ8XeSCfbkterTuFtgRyqzIBEJIDw0mHrjGHnwhqYCT
	DNPE2AWrFuCIKBZAOSA8L9ScFPq0QUs/qKlIKnesvlB/Iqb2ByY1jf3FxCJkm7/1m5d0=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uxzAz-00057k-PW;
	Mon, 15 Sep 2025 02:42:45 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uxzAx-00057Z-1u
 for linux1394-devel@lists.sourceforge.net;
 Mon, 15 Sep 2025 02:42:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NtZQz38DTgOi03QSeQq0CjBm7YGlTeMyD0NKSMYy6JM=; b=Ow9sod8SboKGP6ZUeJiHgFRS6w
 B+DI5RU7wU7iakjDuGdmb5UAa7md3OlPbMOF9GxMdlknRQFj84bO5gEKtEXctlthUPJsfz53j+sZI
 6h5BKW/POfcrAMlptrs8hcc4euCbPUayeyRPtpKyH+0u9nN7MfMcI0ps5upu27fPCwsg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=NtZQz38DTgOi03QSeQq0CjBm7YGlTeMyD0NKSMYy6JM=; b=e
 mIgfa+DfdcVBCqYteFkkuxPoXXE5gt2hRJTrUxG+Gipvkxlbu6NStA3i4pwhaL6iX94f77qSwaZo3
 xrcPdC5NtRCfyBJd1tvJom2TF2mcXBu2x84sBjBry7l3LIFkhj+e8/2QJyfoN4KGCF0CTQGRzRsOt
 SrCcCPMcaNaPY2rk=;
Received: from fhigh-b1-smtp.messagingengine.com ([202.12.124.152])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uxzAw-00010P-8O for linux1394-devel@lists.sourceforge.net;
 Mon, 15 Sep 2025 02:42:42 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 9415E7A00E5;
 Sun, 14 Sep 2025 22:42:36 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-06.internal (MEProxy); Sun, 14 Sep 2025 22:42:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm1; t=1757904156; x=1757990556; bh=NtZQz38DTg
 Oi03QSeQq0CjBm7YGlTeMyD0NKSMYy6JM=; b=lppklzWTmxeTLOkFcrwebiVZYR
 U4jN3gHBZesTL/HWgxehhK9BCdlQDxxiGl/43ogdOA6VHI1nxtafu13ZM1iAlolb
 PZhcnr8fGAh8jvbJNHBTXWBRRxkcFxjpmbYzuv9OcfD4yVDNu/gui0qwyBjwyGHZ
 mvVJ42/cbfK80pv+uKcNvD54Jg7MfcHKXS45buG2E6tgEGw0U9bi6srGXP959voa
 4nTs2eAnc9mGaGZw2wgsNlQRT5GFvFzKEHZJ6KFaYPluC3lUpYIKGkQ5BjhsvZ7n
 lkyiwUeQ/dxSKvvFUSA7Z5kPmMaWZ/vENYjpdqwLaRSn5Rc4jBkhqAUvqkzg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1757904156; x=1757990556; bh=NtZQz38DTgOi03QSeQq0CjBm7YGlTeMyD0N
 KSMYy6JM=; b=M6T79dWX36RGOWKA1FX8HZR69ym4CUOMoctlmZeXhP7odkSQK7O
 Ej1ghuv36ElY+lrBR8IOlAc+GJCMTBR6YSnMOrDG+mirWMZD+h+vnnN/QrZ4Hcx0
 foIf3d2OmCt5ZcSB+uV1qbeUJpLki/TDVt1wmuDD9TY/4ztQ7E4lUT03CKCxnQIU
 2pSSlyQ1wdzvpOjAPfPKCLUvse/KxEVQZSDvJcxC4OyN0QIy46Y6Zoil+q/fzy83
 vt1ez0L1EMqEQ24JT9KULxTbBmiN9TuUOkImIPK1trS+QYLyzm/eB89vTyicoQKY
 Zd5b1xe55Dd/NffpDCqVP6DLDvzhQ4HbEXw==
X-ME-Sender: <xms:HH3HaH0PsBGxSbWNgYN-1N0NGQxZ5_yP7QnCjCP3cRxd8paTJxI5Ow>
 <xme:HH3HaPBj40y_5vnBrLtao4-27WxQj3Q_Xjv1Jc3J4XInr8dAzi-fFpXA6hvk-HmfY
 NFZViIyc1bpbgJLNPQ>
X-ME-Received: <xmr:HH3HaJ0Yc-eorL23Ykf9IIwyq5cebmC_hY0-Y9vKi8mTkNlwDU7yctxmiN2IOSyAnUVh3fv988LpdbIDaz8tqdvej0wBrDku-4PvtJNXZytVheU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdefieehvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgggfestdekredtredttd
 enucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihes
 shgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepffdvueelffevkeduhf
 etjeduffeghfettdfguedtgfdvgfeufeduheevheevkeeknecuvehluhhsthgvrhfuihii
 vgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmh
 hotggthhhirdhjphdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhhtpdhr
 tghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtggvfh
 horhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhk
 vghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:HH3HaJs7b6Y9Z5E4CsdfVTSjhhOjMWjzMpwuGIprhepygPyLaQKLyg>
 <xmx:HH3HaJ6an9sGST0z9ZPodcGgOREF_BdmzeJVqdqPed_ftLx9m87xAA>
 <xmx:HH3HaKLRBKpSabS3yu1RWtHIJ9stFiXiM1OGmw6ixE5GAUSqXSqPvg>
 <xmx:HH3HaJ5Rh16aXQUiPWB4vfy5JM-Benu-uI7GwHDLttqapbGpCzsXFQ>
 <xmx:HH3HaFZGj3fcsFO-sfVF4OLywKpmvOkFSDhjcXcvOnSelZcGkQDzXJD5>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 14 Sep 2025 22:42:35 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/2] firewire: core: use helper macro to calculate jiffies
 count
Date: Mon, 15 Sep 2025 11:42:30 +0900
Message-ID: <20250915024232.851955-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, In this subsystem,
 all types of timeouts are managed using
 kernel timer wheel, thus they are based on jiffies grain. Some macros are
 available to calculate jiffies count, and they have some advantages [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1uxzAw-00010P-8O
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

In this subsystem, all types of timeouts are managed using kernel timer
wheel, thus they are based on jiffies grain. Some macros are available
to calculate jiffies count, and they have some advantages, For example,
no need to access to HZ macro or jiffies itself directly.

This patchset replaces several lines with these macros.

Takashi Sakamoto (2):
  firewire: core: use helper macros instead of direct access to HZ
  firewire: core: use helper macro to compare against current jiffies

 drivers/firewire/core-card.c        | 17 +++++++----------
 drivers/firewire/core-cdev.c        |  4 ++--
 drivers/firewire/core-device.c      |  9 ++++-----
 drivers/firewire/core-transaction.c |  4 ++--
 drivers/firewire/core.h             |  2 ++
 5 files changed, 17 insertions(+), 19 deletions(-)


base-commit: 2ba08d1bad79cc8d9c82f529adc01f27118e0ca7
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
