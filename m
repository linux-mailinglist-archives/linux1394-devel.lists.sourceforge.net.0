Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B17E9A1C722
	for <lists+linux1394-devel@lfdr.de>; Sun, 26 Jan 2025 10:11:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1tbyfv-0004Ik-87;
	Sun, 26 Jan 2025 09:11:27 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1tbyfr-0004Gr-4G
 for linux1394-devel@lists.sourceforge.net;
 Sun, 26 Jan 2025 09:11:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ycKznQ+02M6z4ICyYMuO7BoNNU/N/Ken/M6QYZFnUj8=; b=H4XeL/otuR8tFU9yU4guYrAcsA
 xLBnmQwqHiC2Lq+20XiXtgpZHB9p4WFGYgMYXj9BUvbzmDx3/RTAuCIkphzePHl+MCUJ1Qvfhvccu
 PygVMbNWHJ+rRHmkEqVBnqlVrz5CI008UpnZyxQ8UI5z9tMZjaQZHzqgg4001aC7mUFs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ycKznQ+02M6z4ICyYMuO7BoNNU/N/Ken/M6QYZFnUj8=; b=L
 mxcJB9MU0fDl8EEtZs1PgOmir0BqprgiIcqGkjzfbI+8rKQOLtJsEsgrTSjsPa0i9zlcmHGk+LEYX
 oh2uI02yiZ9YWJV25wfABxY6KOuOQPhcnx5XDUL7FsTkI0zK8tfCxTgnybptNra8YrkbcToju6VKa
 CfRwyrsveMbFYZSI=;
Received: from fout-a4-smtp.messagingengine.com ([103.168.172.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tbyfq-00011v-5z for linux1394-devel@lists.sourceforge.net;
 Sun, 26 Jan 2025 09:11:23 +0000
Received: from phl-compute-01.internal (phl-compute-01.phl.internal
 [10.202.2.41])
 by mailfout.phl.internal (Postfix) with ESMTP id 7B6C9138013C;
 Sun, 26 Jan 2025 04:11:11 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-01.internal (MEProxy); Sun, 26 Jan 2025 04:11:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to; s=fm3; t=1737882671; x=1737969071; bh=ycKznQ+02M6z4ICyYMuO7
 BoNNU/N/Ken/M6QYZFnUj8=; b=UpnmzX8Qdnx3Yz44fjZuvJqH2cFw1IG9cZcZu
 lHUvyy19fy8Rw9hMcT2W5/iFiLPpQGZahUmimL2cz2psvJ/19CA613YPjkeXlxzc
 OWNx9uahs52uBcH1UOOgg3YvcFJTEVfeN82JcTbA5ruFocF+UOgPD1i4AhsXi45j
 GyxJ2bQisKij9z7YrC7y2c5cKrG4W6W6vYh5ttShvkRBm1RZquV8PUQCws76yvdH
 S0cBU+nvT5BQfgjC1X0kuY3A+auBbyygQOazss0PjTSkOAklslM0HpbK/GONtIen
 fe9sJqd9L0k9eI33JCl/tCTH15fATFd4eYVmkl77EQQgdf6Rw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:message-id
 :mime-version:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1737882671; x=
 1737969071; bh=ycKznQ+02M6z4ICyYMuO7BoNNU/N/Ken/M6QYZFnUj8=; b=l
 enxbd+mTY35EOAuWRK4f99g6QXZCtdExmDxX+tkqjIYLZ9CxlrKbht69aLJEul/B
 2ZhRIW1SIAMLRnomZHIZVjybXUftpHUG6iXHt2WEvEwlgR7vpgI0PIAZmjjLcLzr
 Dut+SFirtCBM3T8gVvVqfm3bWGJG/dXNBfNIInxHiEgzEMiqtRFQj3Dri9EGfA1+
 Kwdsk5VhI12H3US+HU/Ocs+dQfDKXv/xa5mKhXWzDEcjzg6R2kBE7hNYVbZWm/e5
 tyjF0VsqYrCLWAGgabShLlj+S+w4Ttg2TYuJr6NJfvNw0mTK1BCYjepcm9Y4llnf
 PnNpDGXjnw3puFEQt6FbQ==
X-ME-Sender: <xms:L_yVZyrjU1fhzbniRiGy_grplQOOMEvVkSj6kacY-x0z6cue1dzysg>
 <xme:L_yVZwqRfassX3SulC_Sl8_l7LeLS0Bc0Sa7pdIGE3MWO5LPElwlcS4dfrsK9aFV6
 Qak03-UNW021gta6CE>
X-ME-Received: <xmr:L_yVZ3MVXi0p_DNc_ku0SJ01Wl7Vg88fKUM7YDL07EGHUFlYlbWbyB4KwLEqGeqckyCoMAsesZ2o6J8Lswdtkh2JR0cXUk7f-Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrudejgedgleekjecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
 uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvf
 evuffkgggtugesthdtredttddtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhho
 thhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrth
 htvghrnhepteefieetfeevgedvgfegffehteeljeekkeelueegfffftdfgtdetteekvedv
 vdfgnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgt
 tghhihdrjhhppdhnsggprhgtphhtthhopeefpdhmohguvgepshhmthhpohhuthdprhgtph
 htthhopehtohhrvhgrlhgusheslhhinhhugidqfhhouhhnuggrthhiohhnrdhorhhgpdhr
 tghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpd
 hrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtggv
 fhhorhhgvgdrnhgvth
X-ME-Proxy: <xmx:L_yVZx7gO53a-FGiF32O0y0SQI4OIjsT2mm6TkUg9L6V2oPoQHhlSw>
 <xmx:L_yVZx4lxZn8bHAo77emogvQD-AjwVAnJe1MbFNelEiXEwBhp2tKPg>
 <xmx:L_yVZxhe2FQZjJabI-4IfNEK2QDwm5z0YdhcRd5W1bYaiJuASw46PA>
 <xmx:L_yVZ74xZ4U5F9eUqey5FF97FEqAydgoH6pD7vnb24NtEU0E5SJTEQ>
 <xmx:L_yVZ7ludbmCTN5y18NfRXeaBCHo23TdNgy6fYHSBYfSf52yP9gZ1ZDP>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 26 Jan 2025 04:11:10 -0500 (EST)
Date: Sun, 26 Jan 2025 18:11:07 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] firewire updates for v6.14
Message-ID: <20250126091107.GA129560@workstation.local>
Mail-Followup-To: torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Linus,
 Please merge the firewire updates for the 6.14 kernel.
 The following changes since commit 40384c840ea1944d7c5a392e8975ed088ecf0b37:
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.147 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.147 listed in bl.score.senderscore.com]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.147 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1tbyfq-00011v-5z
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

Please merge the firewire updates for the 6.14 kernel.


The following changes since commit 40384c840ea1944d7c5a392e8975ed088ecf0b37:

  Linux 6.13-rc1 (2024-12-01 14:28:56 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git tags/firewire-updates-6.14

for you to fetch changes up to 352fafe97784e81a10a7c74bd508f71a19b53c2a:

  firewire: test: Fix potential null dereference in firewire kunit test (2025-01-13 10:31:27 +0900)

----------------------------------------------------------------
firewire updates for v6.14

Two changes for the 6.14 kernel.

The first change concerns the PCI driver for 1394 OHCI hardware.
Previously, it used legacy PCI suspend/resume callbacks, which have now
been replaced with callbacks defined in the Linux generic power management
framework. This original patch was posted in 2020 and has been adapted with
some modifications for the latest kernel. Note that the driver still
includes platform-specific operations for PowerPC, and these operations
have not been tested in the new implementation yet. It would be helpful to
share the results of suspending/resuming on the platform.

The rest is a minor fix for the memory allocation in some KUnit tests.

----------------------------------------------------------------
Charles Han (1):
      firewire: test: Fix potential null dereference in firewire kunit test

Vaibhav Gupta (1):
      firewire: ohci: use generic power management

 drivers/firewire/device-attribute-test.c |  2 ++
 drivers/firewire/ohci.c                  | 44 +++++++++++++-------------------------------
 2 files changed, 15 insertions(+), 31 deletions(-)


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
