Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0648D815E76
	for <lists+linux1394-devel@lfdr.de>; Sun, 17 Dec 2023 11:30:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rEoPs-0007gH-9d;
	Sun, 17 Dec 2023 10:30:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rEoPq-0007g9-LX
 for linux1394-devel@lists.sourceforge.net;
 Sun, 17 Dec 2023 10:30:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fyXh74lQgevKNGlAlWNEOwwiFaBctJceP26p4zqGrh4=; b=VQzw2jMmNBBuZos1akSPEt+ba9
 WWuE+16nwEwSivHtDyqyyzuvXVTlN2NWi9y/6+ue+8gbL2QpA+b+FLQfoo4dede+qcPKaHCRbW3f8
 ykVJiQnkw6AfbjLxM9M5Tt+BJ+fn/bS/0aWuMq0Fq6TfxitOnkKUZdxIyAoZoPLCN2DY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=fyXh74lQgevKNGlAlWNEOwwiFaBctJceP26p4zqGrh4=; b=G
 NXEct/2FwImdCxCva5O+1YYht8SH2k6xIP1rzhy0FqYxznzJAosUCWnYuNjjOD9kebUJzFfhVeeHL
 hXadxKLV/9amd6YmrhxdE+EoqRbU3li3X9JA8gc/JBYlTFhZQunSKvb26CkXT6ihtxjJEIncFblip
 0pqrfECkIQTE5Mac=;
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rEoPh-00046v-Ht for linux1394-devel@lists.sourceforge.net;
 Sun, 17 Dec 2023 10:30:32 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 5A5295C00AF;
 Sun, 17 Dec 2023 05:30:17 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Sun, 17 Dec 2023 05:30:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm2; t=1702809017; x=1702895417; bh=fyXh74lQge
 vKNGlAlWNEOwwiFaBctJceP26p4zqGrh4=; b=LAOz02swTOwpxlka4++GTNrEs/
 fK20h/G62v7uyyNLXgKe9owyZwFb90T7IcFW5szLAIH8N3fFFpLGcFP1vsQlbJzX
 1C2ZHKTi9w2d9wFFA0hKL7Qb++QADCHgCtaxd6lGShDvr3Vb6UrIXz7W1U56VWfP
 UqJQk4hcLOJ+P53PbdDcsupzioFFP8LOz7Pd+MUAE1612sbf4nIfeWT4X9Cm1VjC
 mXsPYOtrpvCeVmbFz5A7VpeiBRZtfbJbbYEuAqpzYu4lUUEeqgKSyL/XptTZPnI8
 QPuxI8qePv1LM0HHrqVpeA6RqOK1lzb2ItWYu3B60QyLDYeUg79a+iNOUaOA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1702809017; x=1702895417; bh=fyXh74lQgevKNGlAlWNEOwwiFaBc
 tJceP26p4zqGrh4=; b=vZEd7JiryxXG/GrZcsNf7s32q7XtWdT/ewhB4wsuHJnX
 SCQem2g64t1SxBsqqX3bMndI0jKnKLMew6XbsOGuwuzXGvJ3jnF4Gl9D3auaOedk
 3MT03PBe3u6TamPrxd6EaUQXbNTO5n13l1951R7oaJn/HX6aSC556V1rwSXNIsVV
 ilk7SCvt+l3vr+4zeMMWXtxb90hzXEJ/LfApBQiBZpBx4b6HFioH+Q8TPMaIyguI
 csiIsNjxZFPqQZVexmJDlNklwkl5voutkG7DH2+1u0Jl0D/j1S8e+oEvL5Uumf2P
 CLGk0oX0S3vHln1piKvsP3zL9EVu6BmdemxnGrkMsw==
X-ME-Sender: <xms:uc1-ZY1Ff3MSz0Atr8p7vdi5bLpKiz6UAuMtTn6oYwxL2jEhNHlmJQ>
 <xme:uc1-ZTFnnzFq7LSvnavQambnTPJZy3rwPiF1X4ChgyKLhXFN5goJtk8NboIVWx_ka
 haNNqrLCmScwyV_G9E>
X-ME-Received: <xmr:uc1-ZQ5OIe4yKeXYV7P3os72lCCbnGK0du7rJohxUys2bMrOyTddaNupe5K5K6WwES4AjiRBdsOtQNU3Bw5nmsW_sr-tgVUMfcflMb2RdRnOqWM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvddtiedgudehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucgoufhushhpvggtthffohhmrghinhculdegledmne
 cujfgurhephffvvefufffkofgggfestdekredtredttdenucfhrhhomhepvfgrkhgrshhh
 ihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
 eqnecuggftrfgrthhtvghrnhepvdevveefvddtteeiffetheehjeelkeffudejieevhedv
 leelkeejkeekieethedtnecuffhomhgrihhnpegrrhgthhhivhgvrdhorhhgpddufeelge
 htrgdrohhrghdpshhouhhrtggvfhhorhhgvgdrnhgvthenucevlhhushhtvghrufhiiigv
 pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmoh
 gttghhihdrjhhp
X-ME-Proxy: <xmx:uc1-ZR08Gq4mpicEvCWAcd3I0dXkwKVaHlYts-FHolWcQfTpbSbI8Q>
 <xmx:uc1-ZbFqLYAJ9G5ALyDleVl2r1x0YCf4RZaM3ypxPGQZxb25bELZOQ>
 <xmx:uc1-Za8PRLsLDs_y9wnmYQsGRrrOetT8Lm0uENqCMgJt_dAwvxFsTw>
 <xmx:uc1-ZRPOP4uTyu4j99KjPCFYRgUUZpOw286MO2ss4kk5ntRUIrwVdQ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 17 Dec 2023 05:30:15 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH 0/8] firewire: core: support legacy layout of
 configuration ROM for AV/C device
Date: Sun, 17 Dec 2023 19:30:03 +0900
Message-Id: <20231217103012.41273-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Current core function of Linux FireWire subsystem partly
 supports legacy layout of configuration ROM, described in annex of 1394TA
 document[1]. It appears that some users have the demand of full suppo [...]
 Content analysis details:   (-1.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -1.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [66.111.4.27 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rEoPh-00046v-Ht
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

Current core function of Linux FireWire subsystem partly supports legacy
layout of configuration ROM, described in annex of 1394TA document[1]. It
appears that some users have the demand of full support[2]. The series of
change is to satisfy the demand.

The change relates to driver matching procedure and notification to user
space, thus could easily bring functional regression. For safe, the series
includes KUnit application to test the change.

However, backward incompatibility is inevitable due to change of modalias
for unit device. As long as I investigated, any unit drivers in kernel
are not affected by the change. Additionally, less applications in user
space are not as well. I think we can be optimistic to the regression.

Anyway, I'm pleased if receiving your comment or test report about the
change.

[1] Configuration ROM for AV/C Devices 1.0 (December 12, 2000, 1394
    Trading Association, TA Document 1999027)
https://web.archive.org/web/20210216003030/http://1394ta.org/wp-content/uploads/2015/07/1999027.pdf
[2] [PATCH] Fix missing sysfs vendor/model entries for some devices
https://sourceforge.net/p/linux1394/mailman/message/55802731/


Regards


Takashi Sakamoto (8):
  firewire: core: adds constant qualifier for local helper functions
  firewire: core: replace magic number with macro
  firewire: test: add KUnit test for internal CSR API
  firewire: test: add test of CSR API for simple AV/C device
  firewire: test: add test of CSR API for legacy AV/C device
  firewire: core: detect numeric model identifier for legacy layout of
    configuration ROM
  firewire: core: detect model name for legacy layout of configuration
    ROM
  firewire: core: change modalias of unit device with backward
    incompatibility

 drivers/firewire/.kunitconfig   |   1 +
 drivers/firewire/Kconfig        |  16 ++
 drivers/firewire/core-device.c  | 117 +++++++++++----
 drivers/firewire/csr-api-test.c | 251 ++++++++++++++++++++++++++++++++
 4 files changed, 358 insertions(+), 27 deletions(-)
 create mode 100644 drivers/firewire/csr-api-test.c

-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
