Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A0DB18AD6
	for <lists+linux1394-devel@lfdr.de>; Sat,  2 Aug 2025 07:49:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Lo9al54wQyObKz0KacbOYm44wExpgMsje8tbbYbkrAo=; b=fYwcLMQjwPkE8f2yY8/3yPX9Lm
	7HllXmWSbz++o64hmKz1AwT1X8rARSAOwPJTz2/LDmZVcv1V5b8/EV4OE4WI/EKHI9vAc9AJBVCSL
	Qw3jJPqyCLJW2dN7rqC4OCqfWxKDip0cHB1qidc4X7l6D0gR+TA67lwb7XeRpOVkLl3c=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1ui57e-0007uZ-OR;
	Sat, 02 Aug 2025 05:49:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1ui57d-0007uG-6D
 for linux1394-devel@lists.sourceforge.net;
 Sat, 02 Aug 2025 05:49:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dO1KBpVrxMGmS+Mb4I9Azt5I6h3EN/fSrL4K9sindLE=; b=eDavCCLtbspfmY/fplE29yZUtn
 Jt+kAD5GnUuy0vlhpANXu/YLZ9qDvmqegtufEkA7vFMcAr+HeL98m8QpLWRQDZRzpVIHC8SoOoyzf
 iOoFBoeg0CxVKdrzBbSM/ses3OPE3saS2JZC0hdB4+U1j/vEnwHnxk+2GYIhe7/7XDMM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=dO1KBpVrxMGmS+Mb4I9Azt5I6h3EN/fSrL4K9sindLE=; b=F
 mjVsr8A2fvpbk8nTtBj5OnyGHP4Wv+TYV3rU0iy5FG06A7hZlbQOh31Z+Eoaq3RLp34AuLN8l4aPc
 RU56higBoxw6wD9g7mlhDqO2hRdnjKQF78h8K7HekxJv02KCj7vLSK8Td53iwdL6EDQZIzU/Vm3Pp
 mKml/hwSEeZessqA=;
Received: from fhigh-a2-smtp.messagingengine.com ([103.168.172.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ui57c-00078t-Ok for linux1394-devel@lists.sourceforge.net;
 Sat, 02 Aug 2025 05:49:33 +0000
Received: from phl-compute-12.internal (phl-compute-12.phl.internal
 [10.202.2.52])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 14B261400265;
 Sat,  2 Aug 2025 01:49:22 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-12.internal (MEProxy); Sat, 02 Aug 2025 01:49:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to; s=fm3; t=1754113762; x=1754200162; bh=dO1KBpVrxMGmS+Mb4I9Az
 t5I6h3EN/fSrL4K9sindLE=; b=rc2ERQp50s27vGzkkrJY42Zcd2VwozAdTscdk
 64RNnNO6QUS739kEycDr9NuV5pUlMR2vsmDwZ06bbfstFmV3tkM4556Ks1RCn+/i
 Eb2xluQ+Z+aYIcu1IhpRgvpvW4rNeTJcWeTrEpkpM8BiVmhQ0zMZAb+3Fk8ryKID
 HktDxv5+venGRdD6XfgzitHcaNml4r2AVCIKXAcinOD2ZVRYB8+9n5ag8o9DBynr
 g6IRYmV50B+geavIypH+f0xtKmaOUnexivE8dxdC2caMh6kPxomics+nHeQw9KIa
 NEoI241KGQqnXL8AqTz81WZeb1FwNkgKBnzN1/Qy0Cki36dmw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:message-id
 :mime-version:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1754113762; x=
 1754200162; bh=dO1KBpVrxMGmS+Mb4I9Azt5I6h3EN/fSrL4K9sindLE=; b=O
 2p67z83SP2XC9/gYfjLtbw7ITDPfem+Fsnzv6oBn+8BgoG7AYVOzDOleeB3t6nYK
 6ltpb9DV1DFdXs9SurmlNbdgOEFdgo5BuXRJFC9FNwLSYFvijzUqQx2iM4T/2oAC
 FN61pcShA5h23vkFMGuj5KsVgOkHfq9CXyQMIGC1y6qm8M1/TWtZi4HpclFDCBZT
 QATdB8FASkgFZcAXc1bODuZ9ooAaW48ARCZQ+rhQoOW6zMUncNYbE9cPDmPhNl/D
 UZ+asAQ28EnM6lGSvmKpMy2LAwf+UgKG5IoU/2ZIMd4wHx/qeokWbaXBr1ak3D/F
 EiyVUyMqILeY1PfuhTJFQ==
X-ME-Sender: <xms:4aaNaDKcwPDHsPhAzQUkTpRstLHoa1u5a2zNH_jiUvFXTA3fvO_ohQ>
 <xme:4aaNaFG1qD7t3ROn2fWC5sef9LLe3CPak28EIaVdLYQw8-zQjbIhxFGKxNrd-elSh
 bonyvBzJSdVN5zbqA0>
X-ME-Received: <xmr:4aaNaOA62ZxElQ6aceWhXPjIh3lla2rf5uv-EYI-tU-EkiReB1ZcuEV7_2FZ47LWPxs0m-MxyQvNAln0fEz_XHz36zvRHUfD0yA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgddutdehjeejucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfggtggusehttdertddttd
 dvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhi
 sehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeetfeeiteefveegvd
 fggeffheetleejkeekleeugeffffdtgfdtteetkeevvddvgfenucffohhmrghinhepkhgv
 rhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
 hfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjphdpnhgspghrtghp
 thhtohephedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepthhorhhvrghlughsse
 hlihhnuhigqdhfohhunhgurghtihhonhdrohhrghdprhgtphhtthhopehlihhnuhigqdhk
 vghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehlihhnuhigud
 efleegqdguvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghp
 thhtohepvggumhhunhgurdhrrghilhgvsehprhhothhonhhmrghilhdrtghomhdprhgtph
 htthhopegrphgrihhssehlihhnuhigrdhmihgtrhhoshhofhhtrdgtohhm
X-ME-Proxy: <xmx:4aaNaA-spsJLDGliSh6KIRn8c8WJYEZBeEZpx2qudNbMIqdCOYe6GQ>
 <xmx:4aaNaCAsTiN6R-8YvXbC037j9Fjg2wpb5dLIOb4UVmlOr9b3dG3Bzw>
 <xmx:4aaNaNRY4xexM94-Fa6Jp_jRCx9R2wFCFKArgAYEARV2zud83Hzx6w>
 <xmx:4aaNaBtpO7iSUziJ0xjFemM-YFLbXsRALKyscBcBZlHWXSv4y8SDzw>
 <xmx:4qaNaH5oCq6vyg_Uk160GZuqvzkQ_sHOfNSuvO8cw_HgvLDoFEbhUNmQ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 2 Aug 2025 01:49:19 -0400 (EDT)
Date: Sat, 2 Aug 2025 14:49:17 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] firewire updates for v6.17 kernel
Message-ID: <20250802054917.GA127374@workstation.local>
Mail-Followup-To: torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 edmund.raile@protonmail.com, apais@linux.microsoft.com
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Linus, Please apply the changes from FireWire subsystem
 to your tree. This update completes the removal of tasklet usage from the
 subsystem. The bottom halves for all 1394 OHCI DMA contexts are now handled
 by standard workqueues. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1ui57c-00078t-Ok
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
Cc: linux1394-devel@lists.sourceforge.net, apais@linux.microsoft.com,
 linux-kernel@vger.kernel.org, edmund.raile@protonmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi Linus,

Please apply the changes from FireWire subsystem to your tree.

This update completes the removal of tasklet usage from the subsystem.
The bottom halves for all 1394 OHCI DMA contexts are now handled by
standard workqueues.

Based on observations from tracepoints events added between v6.10 and
v6.11, the replacement appears to function as intended. However, an
issue remains where 'schedule()' may be invoked within an RCU read-side
critical section. A proposed fix for this issue has been submitted and is
currently under review and testing. As the fix is still recent, it has
been excluded from this PR, and will be sent after the release of
v6.17-rc1.


The following changes since commit 19272b37aa4f83ca52bdf9c16d5d81bdd1354494:

  Linux 6.16-rc1 (2025-06-08 13:44:43 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git tags/firewire-updates-6.17

for you to fetch changes up to 95a042a0c8ecd3c1e886648f6f6ab9c7e4403db9:

  firewire: ohci: reduce the size of common context structure by extracting members into AT structure (2025-07-12 21:52:16 +0900)

----------------------------------------------------------------
firewire updates for v6.17

This update replaces the remaining tasklet usage in the FireWire subsystem
with workqueue for asynchronous packet transmission. With this change,
tasklets are now fully eliminated from the subsystem.

Asynchronous packet transmission is used for serial bus topology
management as well as for the operation of the SBP-2 protocol driver
(firewire-sbp2). To ensure reliability during low-memory conditions, the
associated workqueue is created with the WQ_MEM_RECLAIM flag, allowing it
to participate in memory reclaim paths. Other attributes are aligned with
those used for isochronous packet handling, which was migrated to
workqueues in v6.12.

The workqueues are sleepable and support preemptible work items, making
them more suitable for real-time workloads that benefit from timely task
preemption at the system level.

There remains an issue where 'schedule()' may be called within an RCU
read-side critical section, due to a direct replacement of
'tasklet_disable_in_atomic()' with 'disable_work_sync()'. A proposed fix
for this has been posted[1], and is currently under review and testing.
It is expected to be sent upstream later.

 [1] https://lore.kernel.org/lkml/20250728015125.17825-1-o-takashi@sakamocchi.jp/

----------------------------------------------------------------
Takashi Sakamoto (8):
      firewire: ohci: correct code comments about bus_reset tasklet
      firewire: ohci: use from_work() macro to expand parent structure of work_struct
      firewire: core: use from_work() macro to expand parent structure of work_struct
      firewire: core: allocate workqueue for AR/AT request/response contexts
      firewire: ohci: use workqueue to handle events of AR request/response contexts
      firewire: ohci: use workqueue to handle events of AT request/response contexts
      firewire: core: minor code refactoring to localize table of gap count
      firewire: ohci: reduce the size of common context structure by extracting members into AT structure

 drivers/firewire/core-card.c        |  59 +++++++++++++++++++++++++++++++++++++++--------------------
 drivers/firewire/core-cdev.c        |   3 +--
 drivers/firewire/core-device.c      |  15 +++++----------
 drivers/firewire/core-transaction.c |   7 ++++---
 drivers/firewire/net.c              |   4 ++--
 drivers/firewire/ohci.c             | 162 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-----------------------------------------------------------------------------
 include/linux/firewire.h            |  12 ++++++++++--
 7 files changed, 146 insertions(+), 116 deletions(-)


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
