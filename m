Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C14BF8EC1
	for <lists+linux1394-devel@lfdr.de>; Tue, 21 Oct 2025 23:17:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7/8PEYmqx+6QZVGB8zWRt6iQcdj4lhfkz1M1Ofpq+y4=; b=ie5a7nwSwyWZgXI0j9rtyONWQt
	hagp9GBQFm4+wME15ycLKx5KP9NmiMS8csESB106iO28VuaDCk4XNgLR50TsyhYvz606ldt9wSUfz
	d8/vzbQHd3Yriyf8B2kriTBKWIbSMY/jnm/M/HbjTEoAXxPMjpxgIrAjCuxKDVfQc6nI=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vBJjN-0006Jo-Dl;
	Tue, 21 Oct 2025 21:17:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vBJjL-0006Je-MH
 for linux1394-devel@lists.sourceforge.net;
 Tue, 21 Oct 2025 21:17:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HruvpjJEz3WJJK8LfCW0sjYuuW7dan0UrL1gfqBV1TE=; b=CjxHaGyWQQsH4UDgvYC+XLbcen
 DUfzrUrHn5pWJPNVTzUhcQJVD4ZBRo/vd1SYCgpuKSBHeHskEdTHIS/JlfDZ5pi4aFUROSbN9bl8U
 71NC7vC0pdY8MlonIzos6SfmxicWQj6NPd0E1bzfezcamEiDdITEnaI3xieKWd1khkeY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HruvpjJEz3WJJK8LfCW0sjYuuW7dan0UrL1gfqBV1TE=; b=QaixoA1pXDtUDx18blSrPcMHFT
 5P84xR8TtBgKzkqXVIAdh0bBc+kIUG0zO2L/ejx5VmU5AB8sFu5vfI+HQmgHm0z5fbK2i7Y8wF80d
 Kog+1NGP/U/qEPwOuUTiNj1GD5C1uGqT4g8hy8h5/3zkgl7E9LGy8puCJ3nhNabZFh80=;
Received: from fout-b4-smtp.messagingengine.com ([202.12.124.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vBJjK-0001X8-Hu for linux1394-devel@lists.sourceforge.net;
 Tue, 21 Oct 2025 21:17:19 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
 by mailfout.stl.internal (Postfix) with ESMTP id D01DB1D00156;
 Tue, 21 Oct 2025 17:17:07 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-05.internal (MEProxy); Tue, 21 Oct 2025 17:17:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1761081427; x=
 1761167827; bh=HruvpjJEz3WJJK8LfCW0sjYuuW7dan0UrL1gfqBV1TE=; b=v
 CoP2JV3dL+GKSsUY5ulLv//IxJ9QXViqfRxGVzt2M3hCwGddwVVVHhj2WSJhbRmO
 dSXwZhXqJVs2XTLPFD5ajaID6msUaR92sRtPYQ/fSVnAdHCXm6uffTqUT/w3gYdv
 yNshAzsyIxf9Pfa8rc8RBYBxLzD/Z9IgP6c43LitxoisC7awZzVh+IFhc6lWlR8F
 PYTCyMNeAhcXBmZqCu3e1L29NFnnicr8pVZ/EOg4ZTjYr/21kWSeEcijz9q364BG
 0RRgjo3V6rACp/5ZhS/fsSTjoZIdDzulsSlGcmxQ+Mqj4wvW4SN4fstU7JAkXIDV
 Tvplb+biVwFf8E3kjZMTQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1761081427; x=1761167827; bh=HruvpjJEz3WJJK8LfCW0sjYuuW7dan0UrL1
 gfqBV1TE=; b=gDyegl9H96DLFQPk9VVi4c/unnny7+ExL8mwOTy8KirJacabvqW
 /x4ppKH4IElZN4qYQ9vaG505ogXbsGofVST7QqmwTHhRJuqSijz9sdqiK0v62wLc
 iprk3zdtJtHVBv9F6M/E7C08jHaBau+vvtcGWjy8/C62XqJHDL7xv44WD/BnN1Zg
 EeslA5c0sEtNDaVfal0Q+gA5q+k6rekJA2ZyAfVz7Otljhc5EE8CScn40e+Xhar8
 Iaodr2M12cV4Z2ZAxiCyALAstYXNDMh5l4SPNleqlNBOZYGrzAlLRE6O/93BNRIp
 BnLMAJqYTFwkxMBRBCkQ7UK6ec7TW/fFZUw==
X-ME-Sender: <xms:U_j3aGdVQZVa4MU00d8BVSLkHth3zkBKx-27JdLoI4BpYarkMI0XUA>
 <xme:U_j3aOIvWnQbPJSP6DWIfTEDtAKj7RACmC5jgSdXRMIqJFVPimGdAkzpTmDQwmZLZ
 z79xdMb0PT3XMbRMoKN3_mX6mZ4ksjDWOtdHQ5EZzBpBMPBdyfT3KE>
X-ME-Received: <xmr:U_j3aPHsiZuBWZGHJF6z0B0VHsUgkgiBSITonemxQyupznMx1ckPTg7GBZAcFn5Zdt48wWXgYXBcY0S9qofAXJnPOnrz7I38ww>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddugedujeeiucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttdertd
 dttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeehhffhteetgf
 ekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeuudekueenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhu
 thdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurh
 gtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgv
 rhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:U_j3aApUXi6pYbzEJTZ3p2QUDs8EHMCkJ2tdWqtTFB2Dk2qkCVX8wA>
 <xmx:U_j3aAR3d37lwUKzH0b-LK5tb9FcKo847lPDlw_vK4iiAIyOw5LvHQ>
 <xmx:U_j3aFM8TQ-Do5jPhMryBrgaAwAcz0cCYBu8uMhPGMABrDPForBKXw>
 <xmx:U_j3aLNJF7NUmc8fHE-nY5ghPF1n7uYYRDCa_naVQv1eUNXIfOnw9g>
 <xmx:U_j3aHyUeFcG013xUTu6gCA3zsdG6Xts9h2Y9SKmcd-HfKTWpigLO-qo>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 21 Oct 2025 17:17:06 -0400 (EDT)
Date: Wed, 22 Oct 2025 06:17:04 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH] firewire: core: use cleanup function to release cached
 configuration ROM
Message-ID: <20251021211704.GA210874@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20251020115810.92839-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251020115810.92839-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Oct 20, 2025 at 08:58:10PM +0900, Takashi Sakamoto
 wrote: > When returning from read_config_rom() function, the allocated buffer
 and > the previous buffer for configuration ROM should be relea [...] 
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
X-Headers-End: 1vBJjK-0001X8-Hu
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

On Mon, Oct 20, 2025 at 08:58:10PM +0900, Takashi Sakamoto wrote:
> When returning from read_config_rom() function, the allocated buffer and
> the previous buffer for configuration ROM should be released. The cleanup
> function is useful in the case.
> 
> This commit uses the cleanup function to remove goto statements.
> 
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/core-device.c | 34 ++++++++++++----------------------
>  1 file changed, 12 insertions(+), 22 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
