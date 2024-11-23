Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2206A9D67FE
	for <lists+linux1394-devel@lfdr.de>; Sat, 23 Nov 2024 08:13:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1tEkKW-0001UJ-Vp;
	Sat, 23 Nov 2024 07:13:20 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1tEkKU-0001U8-41
 for linux1394-devel@lists.sourceforge.net;
 Sat, 23 Nov 2024 07:13:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=r8Jk4SM007zzUTmLbATlAoJXOvMWyvGE29KVLkEPgKA=; b=ketUI5/5lmp4cJESb/wy+FTVEp
 h9JmuQ2VKqjVEOUDbQRU2U5RzJJ7ss8MdBTlF2jPePawdcTFJ7FLgKcDH87183OarEjAFNCj+TCYU
 DP3OtdaN1axqCqsimjjDIUE5sF8REnuVf0YjMZpPa32wvJUFbMYOKvKlw92NMMdMolXM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=r8Jk4SM007zzUTmLbATlAoJXOvMWyvGE29KVLkEPgKA=; b=k
 XXBrVuxySeI1zFwBTL5M09e+/RM74BrGsGxn/m3O0bY+R6Q0FX/OfKLQgo1VavWziGICs5NmOVZ8y
 9MXJX+jG6Kb7cLwGa4BqC4w9dpEAEMNfyE026OfP8cqPXZDz6Z69TJffXx6oAmSRwceVARKM2ATZD
 RTP96ygvXllaLJDw=;
Received: from fhigh-a3-smtp.messagingengine.com ([103.168.172.154])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tEkKS-0005ky-Eq for linux1394-devel@lists.sourceforge.net;
 Sat, 23 Nov 2024 07:13:17 +0000
Received: from phl-compute-05.internal (phl-compute-05.phl.internal
 [10.202.2.45])
 by mailfhigh.phl.internal (Postfix) with ESMTP id C323511401B8;
 Sat, 23 Nov 2024 02:13:10 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-05.internal (MEProxy); Sat, 23 Nov 2024 02:13:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to; s=fm1; t=1732345990; x=1732432390; bh=r8Jk4SM007zzUTmLbATlA
 oJXOvMWyvGE29KVLkEPgKA=; b=Jy+u+WtZC6qJ7jFH1zvLZ1HlJCfQsizLR+gp7
 7jZveAQpzuqqBhG5HD/jlCn3qRmuUvGOrXGcfRxjJVct4Y3YrXyYmW2+t0lxFn7J
 bNiXT2uzLj2EBLlHU/EFh0zHPNQ+BuFs0mRDeE9qYPuhneq4B5IkdKcJGhtXUF0D
 lggEE/w4BOIjeEqDBbeGeIEBSdlxK/sJ2+Cs7wCD+FxPGcf+zVBjexz3OSFCuivn
 JbIV4DLCwrV2HloOINjNYrEsSi+hTGu8YY8uykzcJlKmB7zxUFXG9LomucQa6P1m
 iKyWiJFEYpFzCFvLNLCmEhUKPVhUPUxbwieh08taV2aWMMThQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:message-id
 :mime-version:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1732345990; x=
 1732432390; bh=r8Jk4SM007zzUTmLbATlAoJXOvMWyvGE29KVLkEPgKA=; b=A
 fYneGfgS13w4johm7Zb9mGe4J1k9xesf1rtPS5od8r5EzkKF/JmPvLbJyBVrGzpo
 SOOfUBr2n/W1xlW01MbzG6vsrek6FNqO4W1Hk34USAFHMpe1QF6QFzDzhcWJoSSG
 OYHfuPzWZpVBiPl67W6bqRXmAKjQuCPh9eGcE0VwJMT38ihfYo0DvssJT1rZAOGW
 yloQRZ9yD9OXRVEAwU0M70xxQzd2DG0sl92pmCzPAHWqb+FTHYYbP69FWsxsaSJa
 BOEYj4EIJe/8XFynI1ODbc2Tn3fslcZnPEB9Z7LT3pcmIrxQ+gE/BHYIVNGlE3jL
 e3vrQwFBYlrBZ8bw7QJZQ==
X-ME-Sender: <xms:hoBBZ4ApWlMn0Akth3fqEsKM2iIvPi4tmDN1xbQq987v3O2e0egk9g>
 <xme:hoBBZ6jHogjIvmloqr7kjfoJa0lACYv_2uL6oc8oc2GjNjHoGjtqq1OM674WQFtiB
 IXJzh3tN-IZXrcWQjE>
X-ME-Received: <xmr:hoBBZ7lK8KIz-MbWWvXRv6Yyfr4h7inBo5nS-5QbbcTX03XqZAbFGneicCZS0smB0vMI0X9VojwIciMojVkVootoufqBq4eSmQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrgedtgddutdefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvve
 fukfggtggusehttdertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohht
 ohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtth
 gvrhhnpeetfeeiteefveegvdfggeffheetleejkeekleeugeffffdtgfdtteetkeevvddv
 gfenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
 enucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggt
 hhhirdhjphdpnhgspghrtghpthhtohepfedpmhhouggvpehsmhhtphhouhhtpdhrtghpth
 htohepthhorhhvrghlughssehlihhnuhigqdhfohhunhgurghtihhonhdrohhrghdprhgt
 phhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrghdprh
 gtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurhgtvghf
 ohhrghgvrdhnvght
X-ME-Proxy: <xmx:hoBBZ-xy4dg72mM4gvyqn1bo3hKauk_zP3wvjlyHQVmeFV8kffMmGw>
 <xmx:hoBBZ9S6EbuI545aj449wKck_ATG82-8lnJSD45nlBuK8pipameudg>
 <xmx:hoBBZ5agvSh96j1LEiY6Efgr7uWU007jRzGI5MGyjebAas2h6GlLkA>
 <xmx:hoBBZ2S16UfUIwNDn_WRJtEQTXq1lNiNMVm7JAnyS0r2GNodXZpl8g>
 <xmx:hoBBZ_dChUzOYINa_ULOeErJoLgsOq7i3I4FK5bl_BjNpuX-vILkK5bB>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 23 Nov 2024 02:13:09 -0500 (EST)
Date: Sat, 23 Nov 2024 16:13:06 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] firewire updates for v6.13-rc1
Message-ID: <20241123071306.GA108525@workstation.local>
Mail-Followup-To: torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Linus, Please pull some updates for 6.13 from FireWire
 subsystem. The development activity has been relatively quiet, so only a few
 commits are included in this PR. The following changes since commit
 9852d85ec9d492ebef56dc5f229416c925758edc:
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.154 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.154 listed in bl.score.senderscore.com]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.154 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tEkKS-0005ky-Eq
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

Please pull some updates for 6.13 from FireWire subsystem. The
development activity has been relatively quiet, so only a few
commits are included in this PR.

The following changes since commit 9852d85ec9d492ebef56dc5f229416c925758edc:

  Linux 6.12-rc1 (2024-09-29 15:06:19 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git tags/firewire-updates-6.13

for you to fetch changes up to 4752e8cde8344cb8673abdefe0dd74e9a2fe23ad:

  tools/firewire: Fix several incorrect format specifiers (2024-11-14 09:12:04 +0900)

----------------------------------------------------------------
firewire updates for v6.13

A few updates for the 6.13 kernel, including some typo corrections in the
software stack and some fixes for tools. Additionally, it includes a
change resulting from the deprecation of a kernel API in the PCI
subsystem.

----------------------------------------------------------------
Luo Yifan (1):
      tools/firewire: Fix several incorrect format specifiers

Philipp Stanner (1):
      firewire: ohci: Replace deprecated PCI functions

Shen Lichuan (1):
      firewire: Correct some typos

 drivers/firewire/core-topology.c |  2 +-
 drivers/firewire/core.h          |  2 +-
 drivers/firewire/ohci.c          | 11 +++++------
 tools/firewire/decode-fcp.c      |  2 +-
 tools/firewire/nosy-dump.c       |  6 +++---
 5 files changed, 11 insertions(+), 12 deletions(-)


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
