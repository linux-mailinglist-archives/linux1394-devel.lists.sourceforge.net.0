Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 58859842C6F
	for <lists+linux1394-devel@lfdr.de>; Tue, 30 Jan 2024 20:11:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rUtVa-00048P-HL;
	Tue, 30 Jan 2024 19:10:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rUtVZ-00048H-BC
 for linux1394-devel@lists.sourceforge.net;
 Tue, 30 Jan 2024 19:10:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+gJh8ZcSY4aL5gFs6qPyGXcGkB9f/lwBzjFZBMTljRQ=; b=m9vXM7Cb6WVlkslwymQ1+qU1EH
 acpl+VxDvB1FaYUUAJj2AECOi4PJe3zGZCa5TPNilEbrU80qY1x8X7c1+ot1CuE8EtoLTj8h2rEwg
 ZSHHiRfHesz5kgHlBMK7aJLHO0AOyg6byl6/NWxggFyLOMKsrNxksyHW2cdbh5H5Z0So=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+gJh8ZcSY4aL5gFs6qPyGXcGkB9f/lwBzjFZBMTljRQ=; b=e7Z1Z+HFKhkVoR6fjHKHxZ8qtY
 ioBDeYQvZQ1vZVFGN0MmWv7ocVq0se5EXS1jffe4ClzC3FMcFwgWqtMUWak1A/gVajuimGBwXfJ0D
 2tA+e5SJ6w0v2CG6PPdMhYFt1MDPJ+3rwcUp37NH+bjzU5M2G06GE2ArqrInRkjN5k5k=;
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rUtVY-0003ef-2J for linux1394-devel@lists.sourceforge.net;
 Tue, 30 Jan 2024 19:10:57 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.west.internal (Postfix) with ESMTP id BF4213200B6F;
 Tue, 30 Jan 2024 14:10:45 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Tue, 30 Jan 2024 14:10:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1706641845; x=
 1706728245; bh=+gJh8ZcSY4aL5gFs6qPyGXcGkB9f/lwBzjFZBMTljRQ=; b=N
 mYN9gGLmOYjRAN+BQ3ASsuLiYWHhM7vKyuUaTJdaHrbfjfWtqDakhhCWRrbJ+0fU
 q02qgiFG3E3VzMjCIIT7aku4XU9vOe/5k6cGRlfbE2qQuZvGuwBZq37jCPKIfVPZ
 xE3cVPc21yxG1f+2rmg9JX0ssML52PnU7q7ele6T0Ja1J/o6CedvsLGPVLpNTEbl
 Ki+FpeCjFm3YYkXDWwgoUiB0f9rYR8YB+5HCJohemRDsasz5pSqI0oP6ZVSizC7M
 gvz8w9LXNq6shgE4EvTVQs5O9VnYXG//9gxswN8kFIJQmR9WvoV89KPTSFqK68ca
 2IrdDuiozmlgjuZMG0zxg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1706641845; x=1706728245; bh=+gJh8ZcSY4aL5gFs6qPyGXcGkB9f
 /lwBzjFZBMTljRQ=; b=CHWphIxER++1SfPEXD67bf1ELZKQ6YOftuQhf/WLlV3X
 9xdBKlvMzzfyuFSNQAVxZAwIpWtmUs0nCJca5xjS/k5j7XRgJN3Q/dyAdJ1vOTlR
 JskNMqRflQ+3WDDbVR4u3PE0hN+3glMolle2US33lN6GjGB7YGPEpegnB8Ihm6zH
 23EjpaJMyRLq7zQxMB+dh2J4T+/Gcqs6ZdJHUP9xDVDrjp6LN1xuTn+gkrXB0SAD
 eLp4qVMypTo8zZtCdwoMVJfC/5bBWX2rOLkGGJysIjj4AqsaDjYEmr+8CuIJ8ipf
 Ur2b7yDdUWoxb/8kXwneYXuHdnHQMX499C7LkToiNQ==
X-ME-Sender: <xms:tEm5ZWzj_nukIFsyQsXbUUEicKwed1DtERHGAKXSs58nFVZh6uGoTw>
 <xme:tEm5ZST5X2M9VyVb2FIOFI1vd4TtUfmLvDawIxqGWht2D-9qz4V778V7q6V0Jg7xg
 4NLCQixHOvSd2Sv3Cw>
X-ME-Received: <xmr:tEm5ZYXEQ2aXvYWUR36cE5C34jRO9mlym6xw9qqQeY_wsjZRnRThh_9fH0IbhakiHIXlvyLhqfFg5CWL1cjhGWqID50ijG8O>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrfedtjedgheegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnhepveeilefhudekffehkeffudduvedvfeduleelfeeg
 ieeljeehjeeuvdeghfetvedvnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlh
 hushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:tUm5ZciW6TKa6yWDiBeqIbO8gHU7D8v7sVAwy0vFsGNZZBqFutU0fg>
 <xmx:tUm5ZYCnkDe4PSZj182yzm0pjUxW5b-9ijGFilNJmk-lKNr3hxDI3Q>
 <xmx:tUm5ZdLt-omORLz4l55szDVqstZU_1Rz8lauWjviKPUWAm1b_LzFlQ>
 <xmx:tUm5ZR6zAcN2BD_BVFcHsLLkQQ2VC_RmuYu6oH_tD4M9Ty__hbI71g>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 30 Jan 2024 14:10:43 -0500 (EST)
Date: Wed, 31 Jan 2024 04:10:40 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Adam Goldman <adamg@pobox.com>
Subject: Re: [PATCH] firewire: core: mask previous entry's type bits when
 looking for leaf
Message-ID: <20240130191040.GA35237@workstation.local>
Mail-Followup-To: Adam Goldman <adamg@pobox.com>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
References: <ZbJQ0JdbGixJouvn@iguana.24-8.net>
 <20240126011705.GA22564@workstation.local>
 <ZbNyHg3TTWpjiieI@iguana.24-8.net>
 <20240126121917.GA99160@workstation.local>
 <ZbSMVdOZB1zusXmo@iguana.24-8.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZbSMVdOZB1zusXmo@iguana.24-8.net>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Fri, Jan 26, 2024 at 08:53:42PM -0800, Adam Goldman
 wrote: > On Fri, Jan 26, 2024 at 09:19:17PM +0900, Takashi Sakamoto wrote:
 > > I think we can handle the quirk of configuration ROM without chang [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.20 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [64.147.123.20 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rUtVY-0003ef-2J
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

Hi,

On Fri, Jan 26, 2024 at 08:53:42PM -0800, Adam Goldman wrote:
> On Fri, Jan 26, 2024 at 09:19:17PM +0900, Takashi Sakamoto wrote:
> > I think we can handle the quirk of configuration ROM without changing
> > the kernel API. Would you test the following patch? (not tested in my
> > side).
> > 
> > ======== 8< --------
> > 
> > >From 83bf1e04d308ea89c76c64e3168b9701f9d9191b Mon Sep 17 00:00:00 2001
> > From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> > Date: Fri, 26 Jan 2024 20:37:21 +0900
> > Subject: [PATCH] firewire: search descriptor leaf just after vendor directory
> >  entry in root directory
> 
> Hi Takashi,
> 
> I tested your patch with the DVMC-DA1. I also tested it with another 
> device with normal placement of the leaf entry. In both cases, it works.

Thanks for your test. I reposted the patch in the series of changes for
v6.8-rc3[1].

The behaviour change of kernel API is not preferable within the same
version of kernel once the release candidates is public, while we need to
handle it as the series of changes to support the legacy layout of
configuration ROM. So I'll apply my version to for-linus branch and send
it to him.

Anyway thanks for your work and suggestion.

[1] https://lore.kernel.org/lkml/20240130100409.30128-1-o-takashi@sakamocchi.jp/


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
