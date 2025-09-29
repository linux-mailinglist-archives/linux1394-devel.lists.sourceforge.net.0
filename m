Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6D8BA965F
	for <lists+linux1394-devel@lfdr.de>; Mon, 29 Sep 2025 15:47:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9jSmgDStbxJqobF7yIQZMApStYM6uQFSoJjOPiivy0M=; b=icmCpgZq/7jf98CvlrFjEMefnQ
	bSANK49ko/hYQGL9SgXZ5YOEDxAfUWQbHwQ8s73IXJ9H6pq0hgsUfPJCKS45sgK3jD//USr34kM0w
	U/UjvClVFl7pbzFIDQoCH5lDORkf1lJhgGJZQ/SY7xvf3XWF7WxVRNgdVUQ2xmCJkWuI=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1v3EDQ-0003u8-Tl;
	Mon, 29 Sep 2025 13:46:56 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1v3EDO-0003tx-HF
 for linux1394-devel@lists.sourceforge.net;
 Mon, 29 Sep 2025 13:46:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VtDAfbV6Oj0/9M1Wdg+zZFLDn3mMhqZRbW/dQ4BuuTo=; b=ZkO1bFlMWXbJsv5ljxvVREOVLj
 3VzR+fGu8BsUmmT/sjc3iYB2bWmwHaLQlBWdvB0Dv9IGPeDpEw7+BirYGL5FYYHCFuuRjpVRy9+bh
 1CBg7cFlmCBYnYdtVHPm6XxZ9AiEmub77SozrakTmyoSw6YRRJOJPND9/i0MRhLOHu2k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=VtDAfbV6Oj0/9M1Wdg+zZFLDn3mMhqZRbW/dQ4BuuTo=; b=n
 PEBc7sP3lDaHRJHBZC4IKZrjg7ECCHK4BAzhgaWSa1ezt2C2NUquhx4JArwSh2ppT37zNEJEgL++r
 D/LichrcS/WrsQsrylXDbiPEnth7XQ2Oj2NBVo6wVhN+AF6VhJbez53voTeqw4iVm6QtU1Nus72td
 xUZDD1shLHpRDGog=;
Received: from fout-b5-smtp.messagingengine.com ([202.12.124.148])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v3EDM-000503-T3 for linux1394-devel@lists.sourceforge.net;
 Mon, 29 Sep 2025 13:46:54 +0000
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
 by mailfout.stl.internal (Postfix) with ESMTP id 203BF1D00018;
 Mon, 29 Sep 2025 09:46:47 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-04.internal (MEProxy); Mon, 29 Sep 2025 09:46:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to; s=fm2; t=1759153606; x=1759240006; bh=VtDAfbV6Oj0/9M1Wdg+zZ
 FLDn3mMhqZRbW/dQ4BuuTo=; b=ZLg/f5bipnef+4g8NsMJmsFuT3xyB6NSyk9DW
 dFxXs+sFYuS1YPZcTpbYAvRGDfNzjaBGhG3Yyy1lJA86b8Qo9xSQGW6Vuy/IXblp
 jzkijM88o4lJhgG4kNGr032kwGq79w3iykQh+RtdkE+pC+QUmyg7zAc6ieVYH52y
 D2f5VxsEUUwtmwy6wMT3G8lZ+Paomn6Y95q2uS6ptmJ+vFOPpADUKcDzhdjSTj4h
 sDCDdZmx2w0klR/S50sLuCDz22YFk924lVa+hmEbvuxnBbNq5Lyr9ulZxGxXwtx+
 BhL/sEJEbGIolj2/XZQ8QsXFdd1l6lswnBdTsucDuXAIYQCAg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:message-id
 :mime-version:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1759153606; x=
 1759240006; bh=VtDAfbV6Oj0/9M1Wdg+zZFLDn3mMhqZRbW/dQ4BuuTo=; b=U
 u2iMx7XQjNslCVFYCdBuU4xo8IKXC31FeMRTPqBdIpNBpOyUhYy+SFDNujw/F8kn
 OKJXGnpjkc4J8gKgRvwPGE5mlBbCMKTQM30Ct/49ZQ88bUhUAjlRDMM5meZnhQhk
 nZEd28oGpE9aGoJEMYDhM7OeDg7ZkWizdakRkJ8dJBGSQRox79HQfL/e8m0X33q9
 kJjx8aUqlOarul7tF1QcgGLl8meQZgkvJMHqXuBCVUqn4TYOAPMUH2Zl6rhGGsVn
 Iu5L8caGY0NSUJInQ+vAeyUImOAvcuq31fvg7jDCv537QZ4/472OD1MvgW/9YRgr
 33Az0rY1+WrgfwwsgYlRw==
X-ME-Sender: <xms:xo3aaLmHJ7mF_6DLuBbQ2lMxvrNgzYdDkUKREQkVSmTm5ilvOvYRQw>
 <xme:xo3aaGmDG89YOZaL_pPYW-R3vALq_3zhLVuHDFrBBoFGOSdFtFA_ZKXqPzv-FPlaF
 98tiR4WJY8djjRiW4ODyBZU6pob_c6EFqTNNDzixjpGfCXqRK_huA92>
X-ME-Received: <xmr:xo3aaEvF9IOMTOAGCgI8Tph803Oa0f4uM7oCxujX0RLnAzFoOv0tHV20NI8TGLgUJgIb_RsXkj8cAoVpSLQTGpeRuWdyqsBYcw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdejkedujecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkgggtugesthdtredttddtvd
 enucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihes
 shgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepteefieetfeevgedvgf
 egffehteeljeekkeelueegfffftdfgtdetteekvedvvdfgnecuffhomhgrihhnpehkvghr
 nhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
 hrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphht
 thhopeefpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehtohhrvhgrlhgusheslh
 hinhhugidqfhhouhhnuggrthhiohhnrdhorhhgpdhrtghpthhtoheplhhinhhugidqkhgv
 rhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidufe
 elgedquggvvhgvlheslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvth
X-ME-Proxy: <xmx:xo3aaBnkLg6pII-KmrHlD4wpNYnCOjajmcalF96fodj63l3kcURIHQ>
 <xmx:xo3aaHuexI0vDQu2XBDU56DDxKNuxHnGS12bgwZ8gE3952wc2_FNjA>
 <xmx:xo3aaPe8rCnEurDd95p-pVZfx3HrRC0Hbp8fR_aEVZfEv8FbQ8Vn0A>
 <xmx:xo3aaPxs8MONidhDQ9QcjYteUkMLC8MQuwsFuWcaFviwRP4kCRntyQ>
 <xmx:xo3aaGNtptQRmwiNA_WVgBnpx_DcJzZVP0Y9_At0r_TFMEZIUaQ_5MW->
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 29 Sep 2025 09:46:45 -0400 (EDT)
Date: Mon, 29 Sep 2025 22:46:42 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] firewire updates for v6.18 kernel
Message-ID: <20250929134642.GA748211@workstation.local>
Mail-Followup-To: torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Linus, Please accept the changes for FireWire subsystem
 to your tree. This update may appear to include many changes, but most of
 them are code refactoring. Except for the removal of firewire-ohci module
 parameter, there are only a few notable changes. 
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
X-Headers-End: 1v3EDM-000503-T3
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

Please accept the changes for FireWire subsystem to your tree.

This update may appear to include many changes, but most of them are
code refactoring. Except for the removal of firewire-ohci module
parameter, there are only a few notable changes.


The following changes since commit c17b750b3ad9f45f2b6f7e6f7f4679844244f0b9:

  Linux 6.17-rc2 (2025-08-17 15:22:10 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git tags/firewire-updates-6.18

for you to fetch changes up to 40d4c761200b796a44bf2c7675ae09c87b17d4af:

  firewire: core: fix undefined reference error in ARM EABI (2025-09-28 10:20:30 +0900)

----------------------------------------------------------------
firewire updates for v6.18

This update includes the following changes:

- Removal of the deprecated debug parameter from firewire-ohci module
- Replacement of the module-local workqueue in 1394 OHCI PCI driver with
  a companion IRQ thread
- Refactoring of bus management code
- Additional minor code cleanup

The existing tracepoints serve as an alternative to the removed debug
parameter. The use of IRQ thread is experimental, as it handles 1394 OHCI
SelfIDComplete event only. It may be replaced in the future releases with
another approach; e.g. by providing workqueue from core functionality

----------------------------------------------------------------
Takashi Sakamoto (42):
      firewire: ohci: remove obsolete debug logging for IRQ events
      firewire: ohci: remove obsolete debug logging for selfID sequence
      firewire: ohci: remove obsolete debug logging for AT/AR results
      firewire: ohci: remove obsolete module-level debug parameter
      firewire: ohci: move self_id_complete tracepoint after validating register
      firewire: ohci: use threaded IRQ handler to handle SelfIDComplete event
      firewire: ohci: remove module-local workqueue
      firewire: ohci: use kcalloc() variant for array allocation
      firewire: core: utilize cleanup function to release workqueue in error path
      firewire: ohci: use return value from fw_node_get()
      firewire: core: add helper functions to access to fw_device data in fw_node structure
      firewire: core: use cleanup function in bm_work
      firewire: ohci: localize transaction data and rcode per condition branch
      firewire: core: code refactoring to evaluate transaction result to CSR_BUS_MANAGER_ID
      firewire: core: refer fw_card member to initiate bus reset under acquiring lock
      firewire: core: code refactoring to detect both IEEE 1394:1995 IRM and Canon MV5i
      firewire: core: code refactoring to investigate root node for bus manager
      firewire: core: code refactoring whether root node is cycle master capable
      firewire: core: remove useless lockdep_assert_held()
      firewire: core: use macro expression for gap count mismatch
      firewire: core: use macro expression for not-registered state of BUS_MANAGER_ID
      firewire: core: use helper macros instead of direct access to HZ
      firewire: core: use helper macro to compare against current jiffies
      firewire: core: use scoped_guard() to manage critical section to update topology
      firewire: core: maintain phy packet receivers locally in cdev layer
      firewire: core: use spin lock specific to topology map
      firewire: core: use spin lock specific to transaction
      firewire: core: use spin lock specific to timer for split transaction
      firewire: core: annotate fw_destroy_nodes with must-hold-lock
      firewire: core: schedule bm_work item outside of spin lock
      firewire: core: disable bus management work temporarily during updating topology
      firewire: core: shrink critical section of fw_card spinlock in bm_work
      firewire: core: remove useless generation check
      firewire: core: use switch statement to evaluate transaction result to CSR_BUS_MANAGER_ID
      firewire: core: code refactoring for the case of generation mismatch
      firewire: core: code refactoring to split contention procedure for bus manager
      firewire: core; eliminate pick_me goto label
      firewire: core: minor code refactoring to delete useless local variable
      firewire: core: suppress overflow warning when computing jiffies from isochronous cycle
      Revert "firewire: core: shrink critical section of fw_card spinlock in bm_work"
      Revert "firewire: core: disable bus management work temporarily during updating topology"
      firewire: core: fix undefined reference error in ARM EABI

Thorsten Blum (1):
      firewire: core: use struct_size and flex_array_size in ioctl_add_descriptor

 drivers/firewire/core-card.c        | 490 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++---------------------------------------------------------------------------------------------
 drivers/firewire/core-cdev.c        |  36 ++++++++++-----
 drivers/firewire/core-device.c      |  27 ++++++-----
 drivers/firewire/core-topology.c    |  91 +++++++++++++++++++------------------
 drivers/firewire/core-transaction.c | 130 ++++++++++++++++++++++++++++++++++-------------------
 drivers/firewire/core.h             |  22 ++++++++-
 drivers/firewire/ohci.c             | 316 +++++++++++++++++++-------------------------------------------------------------------------------------------------------------
 include/linux/firewire.h            |  33 +++++++++-----
 8 files changed, 518 insertions(+), 627 deletions(-)


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
