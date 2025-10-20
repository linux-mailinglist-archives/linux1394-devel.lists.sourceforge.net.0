Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 219A2BEEED5
	for <lists+linux1394-devel@lfdr.de>; Mon, 20 Oct 2025 02:19:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KZkpEH2VxdllLlFeZLuwnbAXbZuqLqTH/lNzBvSykCs=; b=mt2YGuMliubWfJssMzRCTw4AQD
	VS/y2BCOP/uRFxcjqWrY9efg0LtG3aX1Ajk9mbnXg17p81tvO5yYOh+x4jpG+SzcqWU62NINiR+A7
	L6KGF6VIDxnekTnkZN0E2MThTQKTEyOlpH1SriZlzRNePh52J8SbipE2cJX8ECP7RGPM=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vAdcn-0002Jb-34;
	Mon, 20 Oct 2025 00:19:45 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vAdck-0002JA-5W
 for linux1394-devel@lists.sourceforge.net;
 Mon, 20 Oct 2025 00:19:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JVAv1dpkfiW3RgU/UKAykTqypLZJp0v7q2MsRYL73mA=; b=W+9DYUAz3yPmIe/VGbdxA8wE84
 RGmlzbbnaBfUQc1J/zg3Q+FO+86ejsHoq1WEDrERSQ0objfLIiVQPeKt+N2F/85y8Ud0b8gAN5qkv
 e2pwA17f52pcKm92ksXG1uhZgbyZu+LbQ4Rq77k4MiRI+jMA/gcU2I/7kz7zO/HmcWnY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JVAv1dpkfiW3RgU/UKAykTqypLZJp0v7q2MsRYL73mA=; b=AU2WgYs4unFGjL0wpfNdb8O7UU
 Dk4FpjXlGfnLARZ/G17WFZeFk4LyJ8dKzDxsTq2O+VmhU7+j8T11Amf7qgHB2CPAPmYfFxN50YOH3
 FU1x/0RjwUBeUEiaBMFnDvcRRSGshwGey8UXbmcq/LuXSGY+bXBoDVnJo4311rLuNYNg=;
Received: from fout-a6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vAdcj-00025L-Ks for linux1394-devel@lists.sourceforge.net;
 Mon, 20 Oct 2025 00:19:42 +0000
Received: from phl-compute-10.internal (phl-compute-10.internal [10.202.2.50])
 by mailfout.phl.internal (Postfix) with ESMTP id EE9C1EC0199;
 Sun, 19 Oct 2025 20:19:30 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-10.internal (MEProxy); Sun, 19 Oct 2025 20:19:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1760919570; x=
 1761005970; bh=JVAv1dpkfiW3RgU/UKAykTqypLZJp0v7q2MsRYL73mA=; b=G
 gTRdcy+t1u/G1o0n3+AOV6fVekbSlr5th19jJAxIrYa5m5HGmoLD0RVp44ii17Il
 /lsrwOyIyKmXh7CFaNdoVD/pIzGatd5kMbW2tkr6sAECGC/oefzgC37cO0DOJztk
 yWNyY3/PCmfc/LvT6jcOYB9sqJ86s2Ewi8f9653eF1HIwDRPUIja7mP8bn19brgh
 3cEAQybcfYb2qO/TA3NId6V2AyNLdbUxwI0BPnuuEJczBW6bekNjw5K5OPQkTo/b
 lb4BOe+3HpPGSObejCd93SSSuGQhaM8T3B/FgCy8EauRsmwDRjg1jDgNNxGm3gsG
 ZwsNpovvyk4NosedqHwdQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1760919570; x=1761005970; bh=JVAv1dpkfiW3RgU/UKAykTqypLZJp0v7q2M
 sRYL73mA=; b=rxxbNTdcDCXtXDVxyXOV3JzB2vOlKGpEmvyqcQAmi062wgECsiD
 mUNQ6sb8hx+7z9HTju3FeJ01mNqihm3cVUzQEETUGNnerXQ7zYS/PsJB+4dcfJbU
 jb8ZqZnEJoX4hrBVyKRrFRXYZODf5TB9+3zAT4ZBRZJ85Nfe8xGZ9VO/B3OR4Mlh
 LhZeQMSEK7fHvwQvOpETT4vE0hEC3+P7RGDaeOFiw5X15Hw/ltXEetGNd5XQeNQ3
 8moHvDS6FCfy29AAYrnRwNSZueWlknoDSBSSuj0dA6l13iNAvc7ABatoNVXP9kSE
 Vnsvq7jX4FGwfxR7T2Pob18IO7kG2G5x7ww==
X-ME-Sender: <xms:EoD1aHGK9i0bPvHVfGaByNnQdlmwmo1J5sUoWkADFkQYh_GFNQU1bg>
 <xme:EoD1aEf5F7vnaWxaShGvGoMePkcRXpRNWD8QORoWP4PT8ZhpSjAFFBzn-l9_RgZlI
 AOH7xFZ1LP6XJlFgNeL-yvMxQ3Fkf2aCddicDvaJh7gjrEqQ8jLMZs>
X-ME-Received: <xmr:EoD1aBH3cQDzo8qH6N_fhDwvc15Mr9bxyhKOLR56acng5lpX62VM89E-xlhW-dPu-v-kiSnJCCmcxyC79Oz6hSVFQYYz1m1T>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddufeeifeeiucetufdoteggodetrf
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
X-ME-Proxy: <xmx:EoD1aNU4WnkDL-pLWs45EqRmThdu-nm-WsaFJDTPqQ3FnFJ6I74twQ>
 <xmx:EoD1aIKev0LI_GAU9pkknmuTE3gKAcEbcAlLs9B4okV5QU-2zBLPcg>
 <xmx:EoD1aF9X90g-DZEIH4KknQgFv_309u6c6IaycH60re-fpE_Oy-XLCg>
 <xmx:EoD1aDLDpOQGw2CSklRXuhLp93QtnHdlhl73eOIV3CKsEND8A8rwWw>
 <xmx:EoD1aF4ye777I_dKJZTuZnPyjoOshBxFFErjberl1hcSxhkNOSLNwtjs>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 19 Oct 2025 20:19:29 -0400 (EDT)
Date: Mon, 20 Oct 2025 09:19:26 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 0/4] firewire: core: handle TASCAM
 FW-1884/FW-1804/FW-1082 quirk
Message-ID: <20251020001926.GA52936@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org
References: <20251018035532.287124-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251018035532.287124-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Oct 18, 2025 at 12:55:28PM +0900, Takashi Sakamoto
 wrote: > Hi, > > In 2003, TEAC Corporation had released FW-1884/FW-1804/FW-1082
 in its > TASCAM brand. These devices are already supported by [...] 
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
X-Headers-End: 1vAdcj-00025L-Ks
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

On Sat, Oct 18, 2025 at 12:55:28PM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> In 2003, TEAC Corporation had released FW-1884/FW-1804/FW-1082 in its
> TASCAM brand. These devices are already supported by a driver in ALSA
> firewire stack, but they have an interoperability issue related to
> the speed of asynchronous transactions and isochronous transmissions.
> When operating at the speed described in configuration ROM, they are
> too lazy to respond, and eventually frozen.
> 
> The most likely cause of this issue is a mismatch in the gap count
> between the initiators and receivers. Theoretically, this can be
> resolved by transmitting phy configuration packets to optimize gap count.
> Nevertheless, this approach has proven ineffective, suggesting that the
> device firmware may contain a bug causing the issue.
> 
> From my experience, these devices operate more reliably at lower
> transaction and transmission speeds, which provides a practical
> mitigation.
> 
> This patch series addresses the interoperability issue. The core function
> of Linux FireWire subsystem is changed to read the entire configuration
> ROM at the lowest speed (S100), and to identify these devices based on its
> contents. Once identified, their maximum speed is limited to S200. The
> ALSA driver then performs asynchronous requests and isochronous
> transmission at that speed to prevent device freezes.
> 
> Takashi Sakamoto (4):
>   firewire: core: code refactoring to compute transaction speed
>   firewire: core: determine transaction speed after detecting quirks
>   firewire: core: handle device quirk of TASCAM FW-1884/FW-1804/FW-1082
>   ALSA: firewire-tascam: reserve resources for transferred isochronous
>     packets at S400
> 
>  drivers/firewire/core-device.c        | 86 +++++++++++++++------------
>  include/linux/firewire.h              |  3 +
>  sound/firewire/tascam/tascam-stream.c | 21 +++----
>  3 files changed, 63 insertions(+), 47 deletions(-)
> 
> 
> base-commit: 15f9610fc96ac6fd2844e63f7bf5a0b08e1c31c8

Applied to for-next branch.

To sound subsystem maintainer, I'll send the 4th patch to mainline as a
part of firewire subsystem updates in next merge window.


Regards

Takashi Sakamoto
`


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
