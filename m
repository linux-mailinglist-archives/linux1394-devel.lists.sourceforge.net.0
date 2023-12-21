Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB4281B895
	for <lists+linux1394-devel@lfdr.de>; Thu, 21 Dec 2023 14:49:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rGJQB-00076K-IW;
	Thu, 21 Dec 2023 13:49:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rGJQ9-00076B-03
 for linux1394-devel@lists.sourceforge.net;
 Thu, 21 Dec 2023 13:49:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MpWlL/I4TTCCirTvKzurV4wZMXNFFME8XRsx9U13RCc=; b=DZAlAUh+8bt7n4+ni+Wc2ZIhJw
 LSViR1nNIoZYfiVkyd8fWL6rdX1TfIlN7qLpfhHg/obilgGR1QZWSMIPy+IWBkJ3L9NY/+u7BzRA0
 SVQZqu/e9DRuLYYTQ1J2T+As+UgL0JnaiVRHVOBWPUPU5489nHjOBhrTL4969FpxDngE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=MpWlL/I4TTCCirTvKzurV4wZMXNFFME8XRsx9U13RCc=; b=k
 z7xDbuMPZzkRu3aq8FphrIH2B2IQHtoGhdD+aEQJsc8GHg95JcZlwabqGU6034oUAZL4lk8y0RPjS
 owXL6cvqnidefiDFhCpYperIRYxe9So/Z7tBPefkj2CY5G8vdJaqYPRCrhVs7NKglyRfeGjkBgmsJ
 I54rWqfmf9sGWOuA=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rGJQ7-0002nZ-88 for linux1394-devel@lists.sourceforge.net;
 Thu, 21 Dec 2023 13:49:03 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
 by mailout.nyi.internal (Postfix) with ESMTP id A193A5C0245;
 Thu, 21 Dec 2023 08:48:52 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute7.internal (MEProxy); Thu, 21 Dec 2023 08:48:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm2; t=1703166532; x=1703252932; bh=MpWlL/I4TT
 CCirTvKzurV4wZMXNFFME8XRsx9U13RCc=; b=jHxfqpqeKpmTeAWN+qK2of5tQv
 AgrNkGCBPeNezkJjbzJEw1XCEWHZOhPh6oLSr6I5z9OXhjpXnU/xWdQYNGa28pLc
 8DkDMXGkNuE2zwjniFL925A5+bh5buh5tyKYxc0ka14/gNylddqARL/LbiTJ1L88
 jlCSU2f4BNRkK1nO+UECO6aCmmXl//Z7svX64l2ITs2dYnpC8bRM4kiay+TsmZHu
 YXodxVG5TxSVnXeKFh4UciuSvT9J+eh322DVUZWgpnOK76UckIyPkIhrXx0+IPHD
 ao4NOVt9jl7u9H6werN1NeML/MC1q43AxyfUb4E3nFrncXO4Cx4AM9sO+hXQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1703166532; x=1703252932; bh=MpWlL/I4TTCCirTvKzurV4wZMXNF
 FME8XRsx9U13RCc=; b=OKOIGgfA21gsWJ43Rxvtsl/xAelvSB611cb9usglXhq6
 OLad7qnuwBVQCqsmOFyVXXpnh9Wa63AnrmsW13oUuDKAX1QVu/QAb1+JVzSe+bFQ
 qzNsfXAxBRAC2umk44QWgR1mq7U7BOdC+SLFuuLncZz/bRrL0yDO7HHoqawR72mF
 4gURrTtXPQ7Lwm2jnordLVAUQyq8T971h6lL+WFOCfEP7Cpr3Qx3dnWzR++/Hyle
 f7Z+8oRLGeeV9f3HJ6jX4cxJisuSC0DBTdCxwAxP51eK5HBgRM8DtHmWD6E8zTpw
 rxzXeHAR3+HcUx3QPHACnH2rTFgnmkY/8JIeAK4P5w==
X-ME-Sender: <xms:REKEZdEvlB45f2iiHn-kcgDtNPh93cm6wAHHQKgxQoSI0h1Wh2hqZA>
 <xme:REKEZSU-sMJgwxxOi5OdWnjhUAq4pjpbFx2Nvr3O91NYZlaIpPE2ZBzKrqF0d764q
 d_iw_MBIRjHTUadf5c>
X-ME-Received: <xmr:REKEZfILXJScLZ3wI2B62KzR_P7zZseA977xgmJXDdTPuXL1Ofdm_8q1Okf5I3bsAciVPY-rJNQtHNk_Rotq38ETydAKNbAkBGUi3nRPxq91jg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdduhedgfeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucgoufhushhpvggtthffohhmrghinhculdegledmne
 cujfgurhephffvvefufffkofgggfestdekredtredttdenucfhrhhomhepvfgrkhgrshhh
 ihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
 eqnecuggftrfgrthhtvghrnhepuddvleetteefledttefhvddtteelkedtgffguddvudev
 teeuhedvveejleetgedvnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghdprghrtghhih
 hvvgdrohhrghdpudefleegthgrrdhorhhgpdhsohhurhgtvghfohhrghgvrdhnvghtnecu
 vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkh
 grshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:REKEZTHu5wGZto0zsmXgpJlDmhXzdNohfkDcUuisXhcAkQat8ejiZA>
 <xmx:REKEZTU1MH_qHCC9TTUbgyyUAUIQZq8dXqLAurEHBma2KogiYkf_1A>
 <xmx:REKEZePhFvuQ1N2YeJay9kwXHUG00TXk3CXbCZL9pbMD13AEKi3WWw>
 <xmx:REKEZacuQkOmbJqA_53XHaRKVvNd23LC6uzkETsoQ8Gf04CqUP9mqg>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 21 Dec 2023 08:48:51 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/8] firewire: core: support legacy layout of configuration
 ROM for AV/C device
Date: Thu, 21 Dec 2023 22:48:41 +0900
Message-Id: <20231221134849.603857-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, This series of change is take 2 of my previous post[1].
 Current core function of Linux FireWire subsystem has support for legacy
 layout of configuration ROM, described in annex of 1394TA document[2]. However,
 in a point of device attributes (e.g. nodes in [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rGJQ7-0002nZ-88
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

This series of change is take 2 of my previous post[1].

Current core function of Linux FireWire subsystem has support for legacy
layout of configuration ROM, described in annex of 1394TA document[2].
However, in a point of device attributes (e.g. nodes in sysfs), there
are differences between devices with the legacy and standard layout of
configuration ROM. The differences bring some inconveniences to users[3].
The series includes changes to solve them.

The series includes changes relevant to driver matching procedure and
notification to user space, thus could easily bring functional regression.
For safe, the series includes some KUnit applications to test the change.

However, backward incompatibility is inevitable due to change of modalias
for device corresponding to unit. As long as I investigated, any unit
drivers in kernel are not affected by the change. Additionally, less
applications in user space are not as well. I think we can be optimistic
to the regression.

Changes from v1 series:
* fix evaluation of uninitialized variable in 7th patch

[1] [PATCH 0/8] firewire: core: support legacy layout of configuration ROM
    for AV/C device
https://lore.kernel.org/lkml/20231220041806.39816-1-o-takashi@sakamocchi.jp/
[2] Configuration ROM for AV/C Devices 1.0 (December 12, 2000, 1394
    Trading Association, TA Document 1999027)
https://web.archive.org/web/20210216003030/http://1394ta.org/wp-content/uploads/2015/07/1999027.pdf
[3] [PATCH] Fix missing sysfs vendor/model entries for some devices
https://sourceforge.net/p/linux1394/mailman/message/55802731/


Takashi Sakamoto (8):
  firewire: core: adds constant qualifier for local helper functions
  firewire: core: replace magic number with macro
  firewire: test: add KUnit test for device attributes
  firewire: test: add test of device attributes for simple AV/C device
  firewire: test: add test of device attributes for legacy AV/C device
  firewire: core: detect numeric model identifier for legacy layout of
    configuration ROM
  firewire: core: detect model name for legacy layout of configuration
    ROM
  firewire: core: change modalias of unit device with backward
    incompatibility

 drivers/firewire/.kunitconfig            |   1 +
 drivers/firewire/Kconfig                 |  16 ++
 drivers/firewire/core-device.c           | 127 +++++++++---
 drivers/firewire/device-attribute-test.c | 251 +++++++++++++++++++++++
 4 files changed, 368 insertions(+), 27 deletions(-)
 create mode 100644 drivers/firewire/device-attribute-test.c

-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
