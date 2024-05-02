Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5350B8B9A87
	for <lists+linux1394-devel@lfdr.de>; Thu,  2 May 2024 14:13:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s2VJn-0002tn-1u;
	Thu, 02 May 2024 12:13:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s2VJm-0002tf-63
 for linux1394-devel@lists.sourceforge.net;
 Thu, 02 May 2024 12:13:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Dp1z9rlgIoLTD51H/4RdNUuzKv4MaT+/ZtiGBiw1brY=; b=eATZVO97ySWjgzz2h/QjANBoSF
 5JKiD3Vx/UoX7o7R6xguqbOuZwDAdQrILpdE/coHeTBBVpaMIuarjVij/VpxHtyCcejGiD8R9nK/u
 n93lgf9lERVF7uBSPwAyW2OifiI6oRlO9ws07SLokEF5aXP3zZbxSNg93mtFC/Pzbrik=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Dp1z9rlgIoLTD51H/4RdNUuzKv4MaT+/ZtiGBiw1brY=; b=h2Os+mbzoctHG1rT7d9OjnFDoq
 QIVV64j2adLGVksl70crL7TQQRO4Wdevlz5g+W2wMiHnUbCsEBo29iNdysdwvx6NJk3PmRGEI6RBv
 bsaISDXBMuUonk1ubiNLT6o0yR5FhgrLfyOWy2gj7k3cAyHvYwMSeoG3y0soaqb0Ze2Q=;
Received: from fout7-smtp.messagingengine.com ([103.168.172.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s2VJl-0005LW-PH for linux1394-devel@lists.sourceforge.net;
 Thu, 02 May 2024 12:13:42 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfout.nyi.internal (Postfix) with ESMTP id 192B2138039B;
 Thu,  2 May 2024 08:13:31 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Thu, 02 May 2024 08:13:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1714652011; x=
 1714738411; bh=Dp1z9rlgIoLTD51H/4RdNUuzKv4MaT+/ZtiGBiw1brY=; b=K
 Q3aGUw8bc0xoaykWtFrPYCU6DLwbswvcKN3pMUI14cCDxDWyHhe/0PiZFu7X+EQB
 iOMvwFEX2MFYBj2vj3j2rV3Iq92VkzbzVKb6Ne7oFd9yAUOqgoDcmoyh2TVUZ11A
 LRqP6k5edNZltpx+MvJNHQBQemgJPjIEw/gpmSK38yv/Xj9M867XhiC+M53bZ7X0
 caDUM6Lf4ADHoYcJgVFuuHsgTEgPen6EyKcGZuPmB/a0AG1dbLdA+RE1e0vwazx8
 K86bp2pmrkN0yZ8I34WTkhczd4aB3M8UOXO/IeoVbuFpUKWQ7BoGkiXR4+xKeusr
 DPzMwvSNmqwV1/GcmFOLQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1714652011; x=1714738411; bh=Dp1z9rlgIoLTD51H/4RdNUuzKv4M
 aT+/ZtiGBiw1brY=; b=ZicT6wu7UPEI3NYfU1nNeitHWPvCh1ldLqvYiE8DCboZ
 IkHIVbfUEcukyLzAI2dgjdtajFOCzfMQHFoMJ/fQ+bMsT2vZs5hnp4eArXASAJAi
 uRcVmods7L0KUJqjAOGcJ241zukfns0TDC1ZB6QzBIyrifOuqrwv1/vIV6rWV57s
 5pgd0vqEs7TUVe9G1dLi7a4eZ6lmSvn/gRxe7ely2Op+Dpzn7Pif3KtiScy27nVR
 Ly6HUcOiJzEs4oO8P0NZ5w34ATZBDawDeqTRoTyun6dPIkEDjkjdE78z0B5yi4pj
 lpG7vjRI976kyJ2siZ9LjOaGxg+W03vLx9h4QWL2+A==
X-ME-Sender: <xms:aoMzZmNo_-zRVs9k3u7caNDi5nxNCvk9yVchxJuVnIjCCoEVDcFePQ>
 <xme:aoMzZk-Awr2Ija6b0b30pm8buf2_cG3DkL4_lSveKdcp2CYzw7hk-CvVZDofQ-r2Q
 tm6C2tgWo9_Q3oVH8Y>
X-ME-Received: <xmr:aoMzZtTzS004QlC_xqGJcaWOBjqWKy1XBIGFDJouOCAug4GP_lH2F9EcKYwvp46EaCIQ1zLOLpYsv90ShEay8LJsg7KxX6UF464>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvddukedghedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnhepledtudehvdevvedttedujefhuedtleejueejffej
 tdefteffuddutdfhhfdtudetnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghdplhifnh
 drnhgvthenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhm
 pehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:aoMzZmu1ugr-dkSN0VdWVQeiZfSOFGXz5o-ytPfRwql5Ds0ypD97Ug>
 <xmx:aoMzZuckZZUBVMcXRq1UsKKEuFnZzSa9-fQosDQddfyNsbs_BcCIwg>
 <xmx:aoMzZq3cElMdJzqRedwi6vIfyQ4rXTk3H8kLDkvWVaz2nc2owTr42w>
 <xmx:aoMzZi_1ZDnufA1VOqLdQKrJry6XEI5ruoTFqlYanhaai-Ev3chqqA>
 <xmx:a4MzZvpHI59QO41EzTTDIhzlN9bxU3fRTVe1GzBzeyBIhJGGP_b0eUwe>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 2 May 2024 08:13:29 -0400 (EDT)
Date: Thu, 2 May 2024 21:13:27 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Thanassis Avgerinos <thanassis.avgerinos@gmail.com>
Subject: Re: Security issue in linux/drivers/firewire/nosy.c
Message-ID: <20240502121327.GB121265@workstation.local>
Mail-Followup-To: Thanassis Avgerinos <thanassis.avgerinos@gmail.com>,
 linux1394-devel@lists.sourceforge.net
References: <CAFK=-gY++P_fUyEz36CE8U7qER2_ebJMTkb6-d4Ts6XpcHBzaQ@mail.gmail.com>
 <b260bb9c-edf8-4bfd-8a3f-2257f31bc9ee@app.fastmail.com>
 <CAFK=-gZm4iOVJKi7_1UVx2vMwFZmKs54vbXVowbqnoAiBZfZUQ@mail.gmail.com>
 <20240418084446.GA16391@workstation.local>
 <CAFK=-ga9SgK_GV_2f5Qvo+7MibJFtJy=kjWPu2rRynx1jn3QWQ@mail.gmail.com>
 <CAFK=-gaim8OL6mzJAnU9CBcweY7H+YRebfVCO1vz6iZhERh3vg@mail.gmail.com>
 <20240429094221.GC709071@workstation.local>
 <CAFK=-gap9RTG-5yJit8CFTHh4TV1Zk3svXEa-78c4zjnWvyN7w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFK=-gap9RTG-5yJit8CFTHh4TV1Zk3svXEa-78c4zjnWvyN7w@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Wed, May 01, 2024 at 11:17:44AM -0400,
 Thanassis Avgerinos
 wrote: > Perfect, thank you for the update and getting the fix in Takashi!
 > > Who would be the right person to contact to get a CVE numbe [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.150 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1s2VJl-0005LW-PH
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
Cc: linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Wed, May 01, 2024 at 11:17:44AM -0400, Thanassis Avgerinos wrote:
> Perfect, thank you for the update and getting the fix in Takashi!
> 
> Who would be the right person to contact to get a CVE number for this issue
> and track remediation downstream?

I'm sorry but I scarcely know the CVE process in kernel development. I
think that the entry point is to refer to documentation about it[1],
recently added to kernel tree.

Jonathan Corbet wrote an article about the kernel CNA[2]. It would be a
good resource to you.

[1] https://docs.kernel.org/process/cve.html
[2] https://lwn.net/Articles/961978/


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
