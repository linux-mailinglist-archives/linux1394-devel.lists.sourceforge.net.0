Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 19569C08535
	for <lists+linux1394-devel@lfdr.de>; Sat, 25 Oct 2025 01:34:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2QeMqDk9g4GWHZ+EfzywTQZJnc2ro57woAz9LcIpFD8=; b=NhGlXlYWIwsoUZUHFtxzIcmh99
	MrEcnaKbvIoAQpDn9Ox8fhyg/FTaM+3Kmgv5J6EpiytbjoZYasZ878TrOC2pFKJqYlf8H94jWQbCH
	xxM81AzOaf8DLCfKjr8mWnoMi4GlOkC+zpu8RzXBnTvMMBimEI8nuQ/iw9HxR7kj/g9k=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vCRIt-0006UC-M8;
	Fri, 24 Oct 2025 23:34:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vCRIs-0006U3-7w
 for linux1394-devel@lists.sourceforge.net;
 Fri, 24 Oct 2025 23:34:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=v72nELjMtMmlTac0SNMjedDOXnAusqzAOhY+MbmwKnw=; b=leDjWifcoIE9BNOr7lgzbESxbd
 YjDbRY28KitWgItWhZ85SXZq3J+BgJHgahWEvtoCx953tOUcXTOUYRjk79UyCpViH/AoYsdwUVinM
 XzBgjQ7YArv4UTjR4KlA+y1ocj+wqngUv0I9IUPkZC9rFPnWXhNdx15wBUYuEQjDY8nE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=v72nELjMtMmlTac0SNMjedDOXnAusqzAOhY+MbmwKnw=; b=DnuSKtqxs+4+RAGsx0hIx1IWEj
 dzKOTfWahL1MV0a98S+yWf/CfM9advQgilBcVRDX78X0z84CGuB1I/pdhzJXx85YhjY+Q9bHygWw3
 dsVzFptveSiMhx6Shtej/Wr9YxvRjLz0Y9b5/Rthx4hL4kPxa6byinChZtO/SIG+cqwc=;
Received: from fout-a8-smtp.messagingengine.com ([103.168.172.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vCRIr-0004Qf-BB for linux1394-devel@lists.sourceforge.net;
 Fri, 24 Oct 2025 23:34:37 +0000
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
 by mailfout.phl.internal (Postfix) with ESMTP id 9A358EC0192;
 Fri, 24 Oct 2025 19:34:31 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-02.internal (MEProxy); Fri, 24 Oct 2025 19:34:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1761348871; x=
 1761435271; bh=v72nELjMtMmlTac0SNMjedDOXnAusqzAOhY+MbmwKnw=; b=t
 0NEEPa7H9nMyWBIBxTBOniaiffMrH6W/qkU+W2MUo+NouoLliehhhhZo9ctGa7U4
 V8Kt38m2STTu1dMnfVs1EtU1dKIvBj+qDNbNL0XfUFNzZGM3yTjJhMCzIDer8wC6
 9028D8cwT5cBZJu/aMfBGT9F9+KDiAxZWZHvTxK254jUitrkFZ2pbibi+Ry6L74l
 ROFAjCO0H+wsT3p1pR/gUh/z6mW+XFgWa4dfoTAJobU5vKePt8koiO1r+PZINd9d
 /oTDS7qyqO31E7Mrx3gtT+PtTJT6G2lmrXFRX1//wpYnOXJ7S5mmZZZ0lRDu8qrN
 Ds1fXmR4K1zi3p1y6HdjA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1761348871; x=1761435271; bh=v72nELjMtMmlTac0SNMjedDOXnAusqzAOhY
 +MbmwKnw=; b=QtzYw3/YOTczXtIqg7oxzfmWDqe8+zAhclezionFY0vkrXYAZEd
 x0ODpsXSmqC7z0RNiflLkYAJ0zU9f/Ainh6JV8ufBTDIlRmqPhKhqUCOxGVGKtkF
 GiJH9QJs+v43igA7ZhOXRR3eqyaccv+ZPwULvAcyMhAthQk8ya9HUI81NTBzHLBt
 kFS3bNdgIaptbNfzqIR/Ic9sroIp6mYVBqrrL8hgTkRHHzM7+oxQD+3K0nlbCbeJ
 Pfp2WkBxSdfiC5iubL/zdi3Rdg2mQW6OClghUpnnR5luWYAqUswH5ZdmEI+rfJQN
 GbkC6RGHrhu7I/PltYREyGDVX++AqqffGtg==
X-ME-Sender: <xms:Bw38aFOFwOBwowpX9GBbrbD4mFUU8T7xmi6iQ_LJKbt734bzXHuhNQ>
 <xme:Bw38aC51dRvz_J0KwrQZIz_wotJEbVEoRT4NLgkL2HxPGKFVP6wN8ZBToNE55BLEg
 A-ygyQTRLwimOdIU_wOymm_-y8EFHlh5ZTY4qpPjjgJtwSPuEvu0zU>
X-ME-Received: <xmr:Bw38aDSvujDdQ1CyP3zKrTmqebnVY3ZQCeoMfpuF986F2QCrtZEquOY1JQX04QJ0SujPaS1riuIAf964OypG1XusKjXGz5L7tfA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdduhedtieejucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttdertd
 dttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeehhffhteetgf
 ekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeuudekueenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeeipdhmohguvgepshhmthhpohhu
 thdprhgtphhtthhopehnihhrsghhrgihrdhlkhgusehgmhgrihhlrdgtohhmpdhrtghpth
 htoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtggvfhhorhhg
 vgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnh
 gvlhdrohhrghdprhgtphhtthhopehskhhhrghnsehlihhnuhigfhhouhhnuggrthhiohhn
 rdhorhhgpdhrtghpthhtohepuggrvhhiugdrhhhunhhtvghrrdhlihhnuhigsehgmhgrih
 hlrdgtohhmpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlqdhmvghnthgvvghssehl
 ihhsthhsrdhlihhnuhigfhhouhhnuggrthhiohhnrdhorhhg
X-ME-Proxy: <xmx:Bw38aHBVoxPdgtPAkgqXmJxVrpvPySDI7s9Dcd97EStQ0eFWAZKIUQ>
 <xmx:Bw38aLHc0elDvUOc4eXrQ32CSjKHMMJDn7z33xERKTuTAOkaY8oEVw>
 <xmx:Bw38aJBrfZpfTVRr6yDdSYreEssnFwTMo_bTVT7M-9ii8mUM2fPXlA>
 <xmx:Bw38aLUAf8YXY8DktkJ4IxMEDRl2hA4cOm_M6Omy6TiJE7N_W87Xlw>
 <xmx:Bw38aPE_pLnMG3_Y8_M0-2ugjrdv4vIDePj38E3nFZnn9KJGjX38y9hv>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 24 Oct 2025 19:34:29 -0400 (EDT)
Date: Sat, 25 Oct 2025 08:34:27 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Nirbhay Sharma <nirbhay.lkd@gmail.com>
Subject: Re: [PATCH] firewire: init_ohci1394_dma: add missing function
 parameter documentation
Message-ID: <20251024233427.GB463024@workstation.local>
Mail-Followup-To: Nirbhay Sharma <nirbhay.lkd@gmail.com>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 skhan@linuxfoundation.org, david.hunter.linux@gmail.com,
 linux-kernel-mentees@lists.linuxfoundation.org
References: <20251024203219.101990-2-nirbhay.lkd@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251024203219.101990-2-nirbhay.lkd@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Oct 25, 2025 at 02:02:19AM +0530,
 Nirbhay Sharma wrote:
 > Add missing kernel-doc parameter descriptions for five functions > in
 init_ohci1394_dma.c
 to fix documentation warnings when building [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [103.168.172.151 listed in wl.mailspike.net]
X-Headers-End: 1vCRIr-0004Qf-BB
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
Cc: david.hunter.linux@gmail.com, linux1394-devel@lists.sourceforge.net,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org,
 skhan@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Sat, Oct 25, 2025 at 02:02:19AM +0530, Nirbhay Sharma wrote:
> Add missing kernel-doc parameter descriptions for five functions
> in init_ohci1394_dma.c to fix documentation warnings when building
> with W=1.
> 
> This patch addresses the following warnings:
> - init_ohci1394_wait_for_busresets: missing @ohci description
> - init_ohci1394_enable_physical_dma: missing @ohci description
> - init_ohci1394_reset_and_init_dma: missing @ohci description
> - init_ohci1394_controller: missing @num, @slot, @func descriptions
> - setup_ohci1394_dma: missing @opt description
> 
> Tested with GCC 13.2.0 and W=1 flag. All documentation warnings
> for these functions have been resolved.
> 
> Signed-off-by: Nirbhay Sharma <nirbhay.lkd@gmail.com>
> ---
>  drivers/firewire/init_ohci1394_dma.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)

Applied to for-linus branch.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
