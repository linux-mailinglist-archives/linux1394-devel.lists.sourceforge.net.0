Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B27FA941200
	for <lists+linux1394-devel@lfdr.de>; Tue, 30 Jul 2024 14:36:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sYm5Y-0001un-U1;
	Tue, 30 Jul 2024 12:36:24 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sYm5X-0001uX-Gl
 for linux1394-devel@lists.sourceforge.net;
 Tue, 30 Jul 2024 12:36:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0mMuqrnN4zFshoDbqGo53axgHIxHFvWUKbJFZBwFEy8=; b=IDx4BUABbsjT1g/hLoYlEJQEib
 cWP/Xh+mZk9RnB27t8ScOr/REW4I1hLupnjKczsJAbm3fasb/7UJB+8jpW6PXLcGwo+/pAAmlW/J6
 sAFfyTj00h5NxHJ1ZwvX5gQSjRsim+23MGcvsBoqsWN0mIhfCr5QTNfdtS78286BCAY4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0mMuqrnN4zFshoDbqGo53axgHIxHFvWUKbJFZBwFEy8=; b=e/P0Gdkmym4Kn3+ixn625gVbXf
 M6m+sFBz0KN3m4zOxbvKkiieW5161un7lmP3wHEmGcYnxHaPy1ETixo0ZP9O/n9cUoDTcsQi/lvLr
 genGiMjYyOOlWTPKKU7PMQ1vbxYMfa4Yf6i3RG+m1kxvHXYs53RI935lwwh1E0mZoV3Y=;
Received: from fout8-smtp.messagingengine.com ([103.168.172.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sYm5W-0006UB-6s for linux1394-devel@lists.sourceforge.net;
 Tue, 30 Jul 2024 12:36:23 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailfout.nyi.internal (Postfix) with ESMTP id 397B51380702;
 Tue, 30 Jul 2024 08:36:16 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Tue, 30 Jul 2024 08:36:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722342976; x=
 1722429376; bh=0mMuqrnN4zFshoDbqGo53axgHIxHFvWUKbJFZBwFEy8=; b=q
 eZiBLiL9P2lMbMEjQetxWjdY/HPP/Fs/Sx5/n3cGlIT7NcemydOqJkvgjOVRCh7D
 BxDuOYyhQXM6NA1YweLFuvo/WiBiTGmHMPg2AW0LYkmqLWrAl3BnTbIm5CQi1GeF
 K4n/WiRK9eVmu22hHnS4cRNTGf9mRPtSr223fKAKvcLBVo1XEoE2VG11w2J0roqZ
 7tN7k4V5oZL+8RdKNg47o4EJRaNQdVWEkKJcVnGCSzQHkFNq0UjYJ9zaa5lirQFz
 1B1r3btgNylCGCOtdK0TQUAFvflJkfJ2mOXfBMTA6YWKj/WpfkM0uiEx8W2KYy5H
 BFuviIVLc2BEDEmNzbOAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1722342976; x=1722429376; bh=0mMuqrnN4zFshoDbqGo53axgHIxH
 FvWUKbJFZBwFEy8=; b=CJfCWURtnzr1gaDgWgJJcJz4mFxUm3gUB73Oj/R7/TFO
 svinSNWx1uKucD30UT0+Ly96i1n19McxNiBt4wlK0cU6B6H1qAUt4m7wBg+4up5P
 dVCHp4wME674tmO21Y3cAum9b5REGP4nsI26/s38UbYnYQcVbNg1ucMtLK42KDsW
 R0bRIHl1tUsGCOK5lU/R6YkTYloM8QGztlRp/Jnzg4nih9zQGt9pjGIcXWf3lhPm
 ar1LEmDsCotmeUm4a0LLmTUL8OWTeFU3jtuFImLbGy9B8c8h4GPQrjzYhftHWR0F
 UIT5sJEvQobNehJQuxh90wqxv90pyJhYKY6xw4kiew==
X-ME-Sender: <xms:QN6oZgdXRDPIVTfGsF2r3LyRxLK_mPnBkNXlfL1k5-X3SbMBZ9S96Q>
 <xme:QN6oZiN0s86U95zsMjfwYETH1jXJbgvdXA64ISsLJ_eE7X3F5rjUz-kvPDPqy_oyG
 Pfn5w-OxyeWsGTSwFw>
X-ME-Received: <xmr:QN6oZhg9ZJ69OTIrl7WQNDsktoGKyef91pNgJYYjApKR4cEV7XMLRYAZTLz-KS2h7-cbffAk0A8HPcRYBeIM8xtNVEBif4XTygqH>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrjeeggdehgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkfhggtggujgesthdtre
 dttddtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhephefhhfette
 fgkedvieeuffevveeufedtlefhjeeiieetvdelfedtgfefuedukeeunecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:QN6oZl__lOYBoDLUk04LBfdU6Kgmed81SltZ4LkqvcAlhLkN-isciw>
 <xmx:QN6oZsvZtxSnRUJ5ZwQwsgaHinlFuhgL6c08ahnP3nyA1_qgiXFp4g>
 <xmx:QN6oZsG5_lHfcTrp1L1bfvKz5qirIiTBwYFOYgCnRNJz9oOV40F5uA>
 <xmx:QN6oZrMO4tKWg9_BO9dJT42DBxAzm_QLrHfzuhVuPILhAriNbI-s8w>
 <xmx:QN6oZl41GigIm5yM8gCzt4BQMCeZfz_ZNzfrur5jCCJsvXQQr0VoPnLK>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 30 Jul 2024 08:36:15 -0400 (EDT)
Date: Tue, 30 Jul 2024 21:36:12 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 0/3] firewire: minor code refactoring for link internal
 data
Message-ID: <20240730123612.GA206389@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20240729134631.127189-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240729134631.127189-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jul 29, 2024 at 10:46:28PM +0900, Takashi Sakamoto
 wrote: > Hi, > > The current implementation of both core functions and 1394
 OHCI driver has > some points that need to be refactored regardin [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.151 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.151 listed in bl.score.senderscore.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1sYm5W-0006UB-6s
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

On Mon, Jul 29, 2024 at 10:46:28PM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> The current implementation of both core functions and 1394 OHCI driver has
> some points that need to be refactored regarding the handling of link-
> internal data.
> 
> This patchset is for the purpose.
> 
> Takashi Sakamoto (3):
>   firewire: ohci: use TCODE_LINK_INTERNAL consistently
>   firewire: ohci: minor code refactoring to localize text table
>   firewire: core: use common helper function to serialize phy
>     configuration packet
> 
>  drivers/firewire/core-cdev.c        |  4 +++-
>  drivers/firewire/core-transaction.c |  2 +-
>  drivers/firewire/ohci.c             | 37 +++++++++++++++++------------
>  drivers/firewire/ohci.h             |  1 -
>  4 files changed, 26 insertions(+), 18 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
