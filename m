Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CB261D3A21B
	for <lists+linux1394-devel@lfdr.de>; Mon, 19 Jan 2026 09:52:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oLLMz7zPD2GEhN4CLm/3jKBEKAuygNdfZOV1+kE0r8s=; b=U01QwS45X8FxRHIBPDdpZ795ho
	iJ91AIUllvZoIKdLM20c03vz+zodJVa3YnMvtYctEVUGlXBdRwQ2qBBRpwb4dGfy8yNyrlp97EaiD
	MZmjsjV5OUR0t048aQzl0fcEjNUWz31aE5DVee5NlFOrRihEpPhTJ1CLWThgVfwi5M9U=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vhl0A-0002qL-Oy;
	Mon, 19 Jan 2026 08:52:47 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vhl08-0002q6-ER
 for linux1394-devel@lists.sourceforge.net;
 Mon, 19 Jan 2026 08:52:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TF6XIg4jE6EC+GY0B6MKo2BB4PAz2ujR5heuZDRckfI=; b=OfYQ3f26v+B6FdZlMF86XZ36VR
 G6Yp7Q+ba/hclxdfzdRDEDyVynxe2EwqzYwe0VIJjTvx6NIxX2UQ7b+WC/vcltil85TumLY2QtRj5
 +/Q7RN4VAcr/8pP1LY4X2bC0BuacUtucH0LW8Bx3UOhPg+J+eW/x7v7KzXt7SvvhgFKA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TF6XIg4jE6EC+GY0B6MKo2BB4PAz2ujR5heuZDRckfI=; b=YSQzfSteAivUypgdMw5xxby56A
 oSOJw8Isj8ev1fLx7FCltbQ4c6dEhPpMX3GvogjkcmqcY2gTwLwpoZyq8Nz0QpcrWgcB0y1B444Y6
 aC0WItrWpY07SmiVvZQ2l+Q3Jzy+lKrLPFZ8Ws1i63zPQhqsq8QoZuKtr1syKAbq/WRA=;
Received: from fout-a1-smtp.messagingengine.com ([103.168.172.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vhl07-0006lw-OH for linux1394-devel@lists.sourceforge.net;
 Mon, 19 Jan 2026 08:52:45 +0000
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
 by mailfout.phl.internal (Postfix) with ESMTP id 28A1FEC0496;
 Mon, 19 Jan 2026 03:52:38 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
 by phl-compute-01.internal (MEProxy); Mon, 19 Jan 2026 03:52:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1768812758; x=
 1768899158; bh=TF6XIg4jE6EC+GY0B6MKo2BB4PAz2ujR5heuZDRckfI=; b=d
 nk0T/+FAn/RqND77wBu42ll1UvSLb/nphvNTfTBicjUpJdwbyLKboTQM4uMMTvPj
 0JIWsc7fjY/KD8wr3dVSK/nwD+gcZdrpf1qi+ge2td1sIOcsSHUYv5pFq65Ow63u
 KkKoDilxZv71naLzdrgJVFVvWv3putpcPNVRip0zZ9ASCVgIdcQkg8UlxqrD1He+
 wyU2nY/nzh8kY97KjV2m+xcm7lU5dcQphJMUQ309EVJDTy/JIp+k7kuoOKXGG0TB
 rKiHlH59aVCYOtCmXtVE1xlxc5GP72q9NPe1cJTZMYH3WWtG1a0lGbSOGUIe4/rD
 Emqe8IBYNtOCnIOdU9q4A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1768812758; x=1768899158; bh=TF6XIg4jE6EC+GY0B6MKo2BB4PAz2ujR5he
 uZDRckfI=; b=NNxpw/bSijtIpnkD2rTJVRTtLF1ahv2mgQXI1sZbE0iYM1nGqKQ
 eE8olIpGqTbWBZ35sUcs5/HAL3i6QgRDa9u1x9mnYxIpiCyAFqVLkjNyjdd0IcEW
 h2EkjCMGC88OpK9cISYbTrjAmXJ5cfXMVtP/QELY67SGD1OJ3mUhhq2rAEVhUS9q
 bR37mG28aEx8WltKtjjWZ8S4cb350DmrtNLNd9mAugvSry33+GvvPu/5itiHyEGq
 opvpqb2oTH2IFGyMRdTOhMeUufg2xi9y1J8r8ASdFaN1/2T6QLso/EyYtsrxcdT0
 P7zvqoMgwN0FyiwXs5y6TxDSJ1+lurVeMcA==
X-ME-Sender: <xms:1vBtaSJvi4lBRRKZyDZAAmroKHclyi5lEOKWJuthzGNXzAK1FTIZNw>
 <xme:1vBtaVDnYTPde2FaLiqcUqBvkQh4b_GXzOCiw2G9-hvOCxUq3_4YLlCWyMAsWESND
 GH8DbWP73gqQZ7leneZm-rZLjtEG7lV0xGYdw7qNfepua3rX44aY1I>
X-ME-Received: <xmr:1vBtaagdcNdBB5GonYHxG2-L7noM_qFGIMelIT7LXccrXkaJ5k9_oxup-y4mFcR7JlsdBn5XLEocsGNiRU3jYsghiL4L3eSxqw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddufeejudegucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttdertd
 dttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeehhffhteetgf
 ekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeuudekueenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeefpdhmohguvgepshhmthhpohhu
 thdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurh
 gtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgv
 rhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqshhouhhnugesvhhgvg
 hrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:1vBtaVmeK-ps0CEvnIfpQQIsJhHGzNozOB6xlkwPa-AACRIFw1Q46A>
 <xmx:1vBtaepvAuZb5b3FfiwHPy4Zbzn_FYF1S2tpV3Rp3JIjWwbKW9WMEA>
 <xmx:1vBtaWEYj-TnhS9L1cPWD5NZ3a_eU4DrMnoI07XFjTSFOuKCO6HZlQ>
 <xmx:1vBtaSzV1sZSVdG6MNvCP73PA4rfaPyqhNlAHi6PqOs5s6YeiVaiiA>
 <xmx:1vBtaXSDI48e_N5_yWivWFBBO7Xj9LU3ynC4qYiDWOjoU-jF6m4X1Ei2>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 19 Jan 2026 03:52:36 -0500 (EST)
Date: Mon, 19 Jan 2026 17:52:34 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 0/9] firewire: core: add fw_iso_context() variant with
 configurable isoc header size
Message-ID: <20260119085234.GA490537@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org
References: <20260117142823.440811-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260117142823.440811-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Sat, Jan 17, 2026 at 11:28:13PM +0900,
 Takashi Sakamoto
 wrote: > Hi, > > Currently ALSA IEC 61883-1/6 packet streaming engine provides
 the maximum > PCM buffer size constraints to drivers for audio [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1vhl07-0006lw-OH
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
Cc: linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Sat, Jan 17, 2026 at 11:28:13PM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> Currently ALSA IEC 61883-1/6 packet streaming engine provides the maximum
> PCM buffer size constraints to drivers for audio and music units in
> IEEE 1394 bus, due to hard-coded size of isochronous context header for
> 1394 OHCI IR context.
> 
> The limitation is inconvenient a bit, and this patchset removes it by
> allowing the drivers to configure the size of isochronous context
> header.
> 
> To sound subsystem maintainer, I'd like to send the last patch to
> mainline in my side.
> 
> Takashi Sakamoto (9):
>   firewire: core: add function variants for isochronous context creation
>   firewire: ohci: refactor isoc single-channel state using a union
>   firewire: ohci: code refactoring to use union for isoc multiple
>     channel state
>   firewire: ohci: use cleanup helper for isoc context header allocation
>   firewire: core: add flags member for isochronous context structure
>   firewire: ohci: allocate isoc context header by kvmalloc()
>   firewire: core: provide isoc header buffer size outside card driver
>   firewire: core: add fw_iso_context_create() variant with header
>     storage size
>   ALSA: firewire: remove PCM buffer size constraint from isoc context
>     header
> 
>  drivers/firewire/core-card.c  |   4 +-
>  drivers/firewire/core-cdev.c  |  30 ++--------
>  drivers/firewire/core-iso.c   |  16 ++---
>  drivers/firewire/core.h       |  13 +++-
>  drivers/firewire/ohci.c       | 110 +++++++++++++++++++---------------
>  include/linux/firewire.h      |  33 ++++++++--
>  sound/firewire/amdtp-stream.c |  31 +++-------
>  7 files changed, 125 insertions(+), 112 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
