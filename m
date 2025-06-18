Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 663B8ADF9E9
	for <lists+linux1394-devel@lfdr.de>; Thu, 19 Jun 2025 01:47:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t/DIDRifnvRWMo3t7GeRlHHRArb/mvVSmvDVI14Upnk=; b=NGnvMc7nMgQz0gbRL7Yl5RH7vy
	pimEecoQvzrqxHkdDsFWfaaG063UPGdWtCvaa01TTvtD/ykWsvX5bK3+9TRveEL/CTVPnfA424B8P
	JUGLRMjryWCS7t5Be23/aXLg/mEIoMoaI5rMNsPUrw5dVhS3KpxeZ5dFHGslqpmuBNM0=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uS2VL-0005WM-HZ;
	Wed, 18 Jun 2025 23:47:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uS2VJ-0005WE-TD
 for linux1394-devel@lists.sourceforge.net;
 Wed, 18 Jun 2025 23:47:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Qv5vhTgNOAaYk+9iCQx5vbswZbVkfMT4CfWtBDGSZ9s=; b=flgM0Q71uhLqNy/u1T2WJHLrBO
 YD4xvnDDhkfF+qzAqr4gniPzLxi0ofvaZjlox1McNk1N8a841RbkMCPRh7RfooasByZhirkq3oWll
 VCW7XBNp2/WI9Q4D2/5EqhCe6vlOxOhgOvB7ueosQ7Dr0l3K5JP8Ghow76iZyjc/7RHE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Qv5vhTgNOAaYk+9iCQx5vbswZbVkfMT4CfWtBDGSZ9s=; b=Niv+XLf+QJmRGzOn0h3c1laFUO
 G6MMgjqHWXoxx55UUkTBiS41fDLZCf5OTG1QsvObnj7GjTBuSVHSJkIGOZC1ib1a6EiejY4WT80YU
 76EdNu16sRqWl9hWFCIN1jQc0z3FgUvg76Vl/eS9BpNtHvo4muTxkiyFh0gw4QLinD8U=;
Received: from fhigh-b3-smtp.messagingengine.com ([202.12.124.154])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uS2VI-0003aX-JB for linux1394-devel@lists.sourceforge.net;
 Wed, 18 Jun 2025 23:47:41 +0000
Received: from phl-compute-02.internal (phl-compute-02.phl.internal
 [10.202.2.42])
 by mailfhigh.stl.internal (Postfix) with ESMTP id AE76225400F5;
 Wed, 18 Jun 2025 19:47:34 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-02.internal (MEProxy); Wed, 18 Jun 2025 19:47:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1750290454; x=
 1750376854; bh=Qv5vhTgNOAaYk+9iCQx5vbswZbVkfMT4CfWtBDGSZ9s=; b=W
 5CokIEJS6mHwBsygSD66HRkvPqZrDD99uTp7GHSSJBAdfmPi+jPcJhtHIfR1XoFk
 Eq2YCOUzoc6EnCbZaIYSvuH2Hoqy9lJ8AjLsWxfmfC4NnMnl8kRtgl06hdcwBPmw
 nPBObEAz21LsTm0S2U0FOnyGbso+7hXmqu7JEAWyt9Kl98nZ9o6WEEtxH5PrAu/1
 4GMNR0jc0ISYfUFYhNd7CYyki036Lq6rt0oHADzv6YO+U14e6xrE2zEo8NB3+aKo
 xIkwH1NEd3QsyPGyXZww+YgYZ7ynqgx/xzJhnaFEFrvjgJykteFKkv+Yh6Tp7xK6
 DO1wW12BI/WRSqU+jxvsA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1750290454; x=1750376854; bh=Qv5vhTgNOAaYk+9iCQx5vbswZbVkfMT4CfW
 tBDGSZ9s=; b=DoWTOEa+IATnhce2ufWwIVf8zljXiALvXK2gfCKozBtQqc34rFA
 sJwgP0zLuIuGQa3SyJK2Vj0pPlwcOvtwPVGdpJO/UOxyBHWAvQFc0h3fFzXz8GiY
 qDGY3zh+hT05zARMeMGKqQ5OlgSkmN8pzYcCLXeK6la14y+bgm2/sMJlzV72eNzQ
 ny8srHpyC6vCk32ViE82uy2QZaC9PqfjZvdJuQGkWjEr8jmVNuodO224BKU92Vdv
 rTW18O0/VXTU3MOPJRlqR+2vlvcQ+ltOGRm8jL6UEvp6YxnUOa9YYcleGUCnorvm
 T0Pj1ERvUlSTl2XtcqJowVatVcZcUh+G/tw==
X-ME-Sender: <xms:FlBTaBFZMbkIakXB4R8mCft7PSZ6SEu3DToGisDD9xpFy4M0QV3Thw>
 <xme:FlBTaGVOqlFSgxLt4SMfQc-7hI6FPjn70cNW0IN2w_p5_dDX-8Dhvz0iOzfcBqW-n
 nNrDtswAYMz64yJXzA>
X-ME-Received: <xmr:FlBTaDJ3bprm4Xth3-djtm8vEHbDFOuQx-9eAPkv4Zwv_fIxWwFOh1a5R6-5J-ySupAs8Q4W7LIgyDEs5DyVRTqkEI7gui2SnQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddvgdegtddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvve
 fukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghm
 ohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrg
 htthgvrhhnpeehhffhteetgfekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeu
 udekueenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedv
 pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvg
 hlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhu
 gidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:FlBTaHEYG4MRBvva2Q7SpzWsCzzYT5crU8Dqs4qmHZj0RoCC75O0kw>
 <xmx:FlBTaHWy7uzfZQqsz8oj_k28YrGNBqfcsHlvcDm00UJv1MrUiH81tQ>
 <xmx:FlBTaCO2udDkuooFMsMBgu0V2sbJIU4smTUJ23XHwdOi2FrK5r5cSg>
 <xmx:FlBTaG2Ql20inm-7BZwQVhV99O-nhM48RsVoXTC7zSO4f-3zUgIElA>
 <xmx:FlBTaLkHIKB20lBszuree4_6Xsys31F0b8fbNJDRZYE_19AE-elvfEN0>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 18 Jun 2025 19:47:33 -0400 (EDT)
Date: Thu, 19 Jun 2025 08:47:30 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH] firewire: core: minor code refactoring to localize table
 of gap count
Message-ID: <20250618234730.GA518121@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20250617004320.477421-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250617004320.477421-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jun 17, 2025 at 09:43:20AM +0900, Takashi Sakamoto
 wrote: > The table for gap count is accessed by a single function. In this
 case, > it can be localized to the function. > > Signed-off-by: Ta [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1uS2VI-0003aX-JB
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

On Tue, Jun 17, 2025 at 09:43:20AM +0900, Takashi Sakamoto wrote:
> The table for gap count is accessed by a single function. In this case,
> it can be localized to the function.
> 
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/core-card.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)

Applied to for-next branch.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
