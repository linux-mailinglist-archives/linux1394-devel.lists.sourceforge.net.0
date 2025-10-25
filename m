Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A710BC08F42
	for <lists+linux1394-devel@lfdr.de>; Sat, 25 Oct 2025 12:42:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Xulug3oHELQgJ5X8oBGG9zbwlcWo0JUhJE6pL0AijAE=; b=TL0LG+YZE+uRNjFBCv07/0BivB
	sWTU/G8/CDKjHz8DA+93PQ5owrH5jOvJ+mmyiPnUZLP6lCsMCvOi3jfsLKZC2QDwg3bcZsKGVFICD
	6B86su0yqcwfX3Thba6Q4WyefTiY5M+6MKIO1F379nQ8moaFLMy5T+w683E+dCHpkJKI=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vCbir-000837-LL;
	Sat, 25 Oct 2025 10:42:09 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vCbiq-00082z-7u
 for linux1394-devel@lists.sourceforge.net;
 Sat, 25 Oct 2025 10:42:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WQNINHc2Q8TwWbkVBwbzvaanh6MshyTqFyrHjqMLAAA=; b=gUlE+VU5krovThC09Ud2I9k6CD
 1FuOZZu007SmVAzpuKkLq57P9ttNuFEy1HnCj8B0dj95Q/DGGR93hvlj91RlynZ4DxLJBFxpdH8uA
 dFUQc5FZaXJzC3eMqLpQxDqd0ad28xzqtNiS6+feHBHIyjcnhEEx3mJuxkb11HE8tt3A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=WQNINHc2Q8TwWbkVBwbzvaanh6MshyTqFyrHjqMLAAA=; b=R
 2Z9YaowY/SSC/LE6r4J4xcRxV9j2Ga/MLEZJE2xvOWSixK4lxgRP33wuomqOQYF3DukZkWOt8ihdD
 PslAk8wugviWtBup4wBrlb8ShoKj/CedQIz9LB1ivUD+PtCo5r5Fim6ORXzgkOnUQt/nBBXjfyE9x
 RWLWb8BzTx2QrKAY=;
Received: from fhigh-a2-smtp.messagingengine.com ([103.168.172.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vCbio-0005Ru-RT for linux1394-devel@lists.sourceforge.net;
 Sat, 25 Oct 2025 10:42:07 +0000
Received: from phl-compute-12.internal (phl-compute-12.internal [10.202.2.52])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 2FDC2140010B;
 Sat, 25 Oct 2025 06:41:56 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-12.internal (MEProxy); Sat, 25 Oct 2025 06:41:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to; s=fm2; t=1761388916; x=1761475316; bh=WQNINHc2Q8TwWbkVBwbzv
 aanh6MshyTqFyrHjqMLAAA=; b=Nv4Wov5wKXUxKxlA4duqP/05myrvEVenrSGER
 2cslKA7Bm4rab7pf3afGV80IZsgXrQ1OW+gy/s4V7cMG8J5XzF/wxgBSxkaeDL7v
 sdJLyDk7N4KLZWCXrfuTb1ONWjlB+y2Al3txd5cHcnkxdVEi1u0TT4pUoP+2I3ln
 Df8g8+lS8POg5bH8GbXB2Fwfr8M6fCqD26nhj/cYtAeHpZQLd1lpRzovPnkx6/Ii
 XWL5jpWMwTjCWX8oF9EkMH2SEHmf7C/tG6TPH4+Ai89SN4f+uToa6qrxJy2mgnlt
 9RM8hfR+YgvJVr3JargC+ciNERKMdd0dnx3fLZmk6WeofeqHQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:message-id
 :mime-version:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1761388916; x=
 1761475316; bh=WQNINHc2Q8TwWbkVBwbzvaanh6MshyTqFyrHjqMLAAA=; b=F
 PRksBb0Tw6jYN+KjCP3XeUvp9vQnI02Qa0UeYBoh08kSXxnvobCu7gVAv5xRefrb
 B8Ag2GAKmUoyyCfiS7/K1yyUosUVcSEpajGtKPJCh/lfVJZnBDDW6YnaJXg7gRN6
 CoqVp1HR3qrS5+8pkpFJ38ZB/9RoLRbkFyxpqDW4iwHG7mqASvgIn57/XBvXM04F
 T66YlaSHNsFMRRKwx+ykDDTNsion/70lX6iGRJ65QTuo2eJblaaNqz00K4w5rtp7
 8+7G2FrF04x4ipaNlJZYete/F/u1x3PvC3fXhtYSMM47Y7EPl9wl3F/2P9U/hvyv
 MzTKEnrLU1+0B33MHw9Vw==
X-ME-Sender: <xms:c6n8aPtCmES8tkIpZd6mLFrZUXoKngNzFO1U5W2WAwBA0ERavpXxUw>
 <xme:c6n8aIOKMFOG8eSqFVuA-5Fku6tUwgc2Hf9MqfX9mxWIRuutK3LQ095OK9Q9ujURo
 bkQAOE86mg7x1K7Wk820gCnjt77FxKbP8sZKEay1CQAIrAbOEzRBAo>
X-ME-Received: <xmr:c6n8aF0nQr02SKgSIcFf-H5AmlsJw0FGao8DOKmTgGLIBsMzHxJyy_DyVRfIU5QHxHAhOamGxo8ZnYQDsJ9QRGee-88QUPVfUxo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdduhedvtdduucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfggtggusehttdertddttd
 dvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhi
 sehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeetfeeiteefveegvd
 fggeffheetleejkeekleeugeffffdtgfdtteetkeevvddvgfenucffohhmrghinhepkhgv
 rhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
 hfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjphdpnhgspghrtghp
 thhtohepfedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepthhorhhvrghlughsse
 hlihhnuhigqdhfohhunhgurghtihhonhdrohhrghdprhgtphhtthhopehlihhnuhigqdhk
 vghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehlihhnuhigud
 efleegqdguvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvght
X-ME-Proxy: <xmx:c6n8aMPR1f77Cu3I8wkFRdwRVp0yDKCZPdSz_VmIuasjGJN1imkdvw>
 <xmx:c6n8aN2LFoOm-a-1B0fje-Vfc1_QLLYDYmSyw6LTxiYTQnPOynkYDA>
 <xmx:c6n8aLHbLAuRG9T6JFnYD9m2YBOfsb8QsUgIJM6NxIwON_uWvUR7Tg>
 <xmx:c6n8aC6ekIJEEhQ6GIaSQNCeV0JRW9l_58P2pwKgHMzlPcW-mg1EnQ>
 <xmx:dKn8aOb86HEbHQ2oeLR0QsBCghYH0P25IXpfyJoC-97aWOeF-sal4NOe>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 25 Oct 2025 06:41:54 -0400 (EDT)
Date: Sat, 25 Oct 2025 19:41:52 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] firewire fixes for v6.18-rc3
Message-ID: <20251025104152.GA501617@workstation.local>
Mail-Followup-To: torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Linus, Please apply the following fixes to your tree for
 FireWire subsystem. The following changes since commit
 211ddde0823f1442e4ad052a2f30f050145ccada:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1vCbio-0005Ru-RT
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
Cc: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi Linus,

Please apply the following fixes to your tree for FireWire subsystem.


The following changes since commit 211ddde0823f1442e4ad052a2f30f050145ccada:

  Linux 6.18-rc2 (2025-10-19 15:19:16 -1000)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git tags/firewire-fixes-6.18-rc3

for you to fetch changes up to 73ba88fb04081372a69f0395958ac6b65d53d134:

  firewire: init_ohci1394_dma: add missing function parameter documentation (2025-10-25 08:29:56 +0900)

----------------------------------------------------------------
firewire fixes for 6.18-rc3

A small collection of FireWire fixes. This includes collections to sparse
and API documentation.

----------------------------------------------------------------
Nirbhay Sharma (1):
      firewire: init_ohci1394_dma: add missing function parameter documentation

Takashi Sakamoto (1):
      firewire: core: fix __must_hold() annotation

 drivers/firewire/core-transaction.c  |  2 +-
 drivers/firewire/init_ohci1394_dma.c | 10 ++++++++++
 2 files changed, 11 insertions(+), 1 deletion(-)


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
