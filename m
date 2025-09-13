Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A067AB56052
	for <lists+linux1394-devel@lfdr.de>; Sat, 13 Sep 2025 12:51:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sG4c0mK8+PG94KAYvaJRj4hkCV4pUPPWykhA8BOMN7s=; b=Dlc5cc/7aY5gulMEe/KozPNeVa
	qHgSy3mQL0ohjT3vLdyQdaRaAP4puUCWmOzcx+gPH63gHGdNJNoWukIxjd6YqeCRF7uJ7aLzAUQsF
	fpgQVTve12xBiedSRmsI2HIJDPlVSOF+n+q9UNlwIERyg0K5IJ5oz24Mj2ikwsswp/1c=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uxNr4-0008HG-Oo;
	Sat, 13 Sep 2025 10:51:42 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uxNr2-0008H7-5F
 for linux1394-devel@lists.sourceforge.net;
 Sat, 13 Sep 2025 10:51:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1aeX1iI+8sC0jSTtS0r6viCeBV9ibWg2PLeun5wkNx8=; b=hPUF4k4jpwnYKLVWO714/+49ej
 r7suNS5p+NWjCHI8N43jNFBQbxNJdfTXevgSI79feI0WGxfca2ArZPyEgQX8bQBK/pJ7ooQeGWhsm
 vLMY6Jl9MshHhg2ZKIVFELDZQr/ul4lvchJvj8j0G2IEeCcDeob1cTRdQHnNnoKcQRU8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1aeX1iI+8sC0jSTtS0r6viCeBV9ibWg2PLeun5wkNx8=; b=dy5VEXPD+xuptll2HsQkq7RQCG
 NjUFpCPE6hFLk45WJ2ho9q2FMk7qcOlhzRiiYDKvyzTwu79fMfRTd5bO/B/8crekW6YpxHdyqZs0n
 p0sXOdS+8yPOIHYaCXqLA8g0wrK04ogBoo9SaAE0MeceuNQSdZeuG2MyFknyo4Q8biRU=;
Received: from fout-a2-smtp.messagingengine.com ([103.168.172.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uxNr0-0000S6-PA for linux1394-devel@lists.sourceforge.net;
 Sat, 13 Sep 2025 10:51:40 +0000
Received: from phl-compute-08.internal (phl-compute-08.internal [10.202.2.48])
 by mailfout.phl.internal (Postfix) with ESMTP id 16FE9EC010C;
 Sat, 13 Sep 2025 06:51:28 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-08.internal (MEProxy); Sat, 13 Sep 2025 06:51:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1757760688; x=
 1757847088; bh=1aeX1iI+8sC0jSTtS0r6viCeBV9ibWg2PLeun5wkNx8=; b=S
 4d2qYvwRSkV2sG2GSpYZi5VZw+o0ewT29seg27hoiUsBzkfXo7YLRlyFPz61uT39
 2eUWRHGLZ5IhOqpd1fBieOXLsUJIkRJp4tONi2RtKR4ckY1+WYzND3nS6vM589Vr
 xFd2+v4IDvrJ3WTbqbIje1I27Hj6mJLf+d/efnI8/OR0EKygeUtM2hZI9CdW9Szo
 +r/EQzp1SSa+p0e5evyXjBlD13A4KX8cvPdRsnofVdLPpLfHYVbNTr/Rm0VmOlnB
 TlENRVryFfgBIrVhYL3dL4vMC+QYYgpzh9FDoI1eZXyviApn1bbUHZdquZNuPeCo
 CeRfkZ3T4f4FZJDXRUUew==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1757760688; x=1757847088; bh=1aeX1iI+8sC0jSTtS0r6viCeBV9ibWg2PLe
 un5wkNx8=; b=kUILIe3/qo2GcumO5nIkpapU4QUPYEtP6lpm+Ln7zEOYcljGA1u
 3dIydUr7uwMa6ZPH4HBedIeAY8O86oHOqCnQOry6uM2eSHrq5o/IfEakvP4/Kyzh
 aplLDLf9auM1HEP7jSud3s6a7/fpH/DqWg7qp48ssdQhbGz14iuY5kQYVonlffzH
 ltW2dSulm3LNi+OJ3cj19Rt35P/GfqAoXDYjDWqjvj7t9kSrn+8aq2uwwWwMZJ88
 FxmxunNtfV3ms0dg4bbafvlQyhDNTBYDzbyDcqCR/sYz5alfXczKnENMu5t3G3EX
 Z9uNzR4A2c3brDjhWQKNAP5W04QRkNM9UUQ==
X-ME-Sender: <xms:r0zFaCdcYfaAyVe9LbNtUyThit6mqAnjWi4xUBWKd0dhnmbguFQ5qA>
 <xme:r0zFaFLE-Q_3iKNKCiWuUo0CXs1XaPzuniTP6JuVMc3QDbVZ4QFaSUigw1TkPQ6X0
 22cgHF-VyxRiR85i1I>
X-ME-Received: <xmr:r0zFaFcu6uj2ztAxvi4Z98sa15sn52NKQAyreZBk-4xaPdMoofuIHh_H3_obuQIEx7p2_pXVKX00gkoLFw2UsAIp1Re150vg--Y>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdefudejgecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkfhggtggujgesthdtredttd
 dtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhephefhhfettefgke
 dvieeuffevveeufedtlefhjeeiieetvdelfedtgfefuedukeeunecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhht
 pdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtg
 gvfhhorhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghr
 rdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:r0zFaM2XIJcvprCuZAuV7ZS5QSPhmUpZE0xs12hxhBy6o9QaDiahPg>
 <xmx:r0zFaOjHEArKfmg9bpwAejaZ8XP6rsihAMyv31q-XaOMkrClxHPM6Q>
 <xmx:r0zFaCSWHQukv1dM28j94p-zbILwP_U7dr6MKj3y22x_RkRwuN6dlw>
 <xmx:r0zFaPjId9ruHW6YIypTvJmc-ocpwpyAUu1Oo8ZvQ2zluxFn6brSnA>
 <xmx:sEzFaNBLzET1vj5FK0Mfi9CauVj7KvWFfVokalZ44X-z6a4tfri52kc6>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 13 Sep 2025 06:51:26 -0400 (EDT)
Date: Sat, 13 Sep 2025 19:51:23 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH] firewire: core: remove useless lockdep_assert_held()
Message-ID: <20250913105123.GA777602@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20250911221312.678076-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250911221312.678076-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Sep 12, 2025 at 07:13:11AM +0900, Takashi Sakamoto
 wrote: > The bm_work work item should be scheduled after holding fw_card
 reference > counting. At a commit 25feb1a96e21 ("firewire: core: use [...]
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
X-Headers-End: 1uxNr0-0000S6-PA
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

On Fri, Sep 12, 2025 at 07:13:11AM +0900, Takashi Sakamoto wrote:
> The bm_work work item should be scheduled after holding fw_card reference
> counting. At a commit 25feb1a96e21 ("firewire: core: use cleanup function
> in bm_work"), I misinterpreted it as fw_card spinlock and inserted
> lockdep_assert_hold() wrongly.
> 
> This commit removes the useless line.
> 
> Fixes: 25feb1a96e21 ("firewire: core: use cleanup function in bm_work")
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/core-card.c | 2 --
>  1 file changed, 2 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
