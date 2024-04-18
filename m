Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 066488A953E
	for <lists+linux1394-devel@lfdr.de>; Thu, 18 Apr 2024 10:45:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rxNOC-0001mv-WD;
	Thu, 18 Apr 2024 08:45:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rxNOA-0001mk-T8
 for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Apr 2024 08:45:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ft8I0I3DZvF751Ix+ST0rnfKqxUTk2FXU2cgVw0SvD8=; b=IVexGIKKju99dulIbkV4SJYhve
 KYtYwh1clpXPBYnVenGqbxLMaJFXgCwr/9DwDdrMhlMhUigXuQKdQ7x1umanMdHnawI0WaVaWSEcd
 iGAHMrNr0OV5s6LT/AfocSXLGmjh5QcWdU3RPm5e3sE0A/XC4ou+dBWpqQ1+5Y8py5pw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ft8I0I3DZvF751Ix+ST0rnfKqxUTk2FXU2cgVw0SvD8=; b=H/lnr2Pc4p0JkoITFJURyaMwlL
 tFTf3XbZTylCdEauAdUVW/7ILTKmXZItMpILBrjiFC8+iFrPvgJ1XjddLzhhuPAD1zZw5NaFmOtUb
 pGH5LkISK6YkphYsyYSGA0Cvf2UCgbEo4/bdfQ1D+bIYd1QK2HT51V/MOLOYBaABFzAA=;
Received: from fout5-smtp.messagingengine.com ([103.168.172.148])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rxNO9-0007jU-JM for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Apr 2024 08:45:03 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailfout.nyi.internal (Postfix) with ESMTP id C710F138010D;
 Thu, 18 Apr 2024 04:44:50 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Thu, 18 Apr 2024 04:44:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1713429890; x=
 1713516290; bh=ft8I0I3DZvF751Ix+ST0rnfKqxUTk2FXU2cgVw0SvD8=; b=Q
 PKKjFxjsEubpTKsR6W1TE/08Z/9DdkkfsU+DQFGsTqIzY1mTzm4o+zVLQpzwTFWG
 C0KIZj9o3liRq9/8Bas1oSN03mhQTtOtOz4m04D91Qtv6+KCdlBqcMvDewDMYvL1
 q2nYSmIhod6pDN60oYtT8cJ+rXls//2qYp23FmsVNViNWjOIMOgnqOmB6Ncl9F43
 lN8060ECR1+724LZr1z1nqrYOHYDXVV9kE/7tN6CPC7QV119UasEVrnPF4uHCw2W
 ByVjcWWATtoLnNeP7l16L+Ab5jyMxm40AbHticY6s5IuX6OCTAOLCftdUmkQ17jJ
 TVe4B70dBLNFMBVjl+xAA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1713429890; x=1713516290; bh=ft8I0I3DZvF751Ix+ST0rnfKqxUT
 k2FXU2cgVw0SvD8=; b=RV7WxhWxKvTCySJYgiWlwMXUPk6NL4u0o/Ha5jA7u2wT
 ZTXbWFcjVu1izfctKxL51I0o1ty1ffiQAwCb/AMN8kXtB0yPMntRk4I2edHqKJLV
 71DijHeksWU7flLqgC7FU1KQuuS74NNcc92Ax6s6TKJvVaPvWXPI3J5eNpZ61Fg7
 T1g2oVios/svqKg/qkH+qAcZmIVGHX9ydvhIAH73t04aACnBgfVyTiazmh0YAf4/
 NgYJ380pdAdXHaTpt6FAWDfFLX9NSKl4pmp/BbSN3pTGX/YUotJp7Z26TDTwaRD6
 oxffTO6Zkre3FuO+COS66L6taHDU4a9wc199VWhAkA==
X-ME-Sender: <xms:gt0gZr4SWau-800YxJ0LkuHAGuAvrd7lVy4pynY1REHW5M9RGLwsdw>
 <xme:gt0gZg7L4U4fA9tT-QKdg4prvGBuUcpSxGcQ344GruW-IBBw9GbVRFhXKIucnHP6c
 LmUEUDPTFTsE1Pm5lE>
X-ME-Received: <xmr:gt0gZidh2r44Lwg2hBd3A64baU0yI7EnMrLlTu7mhN5FQmTAVGzbVrF31B9Y6qjdNS1rkYp_8sUDzJ1jYGNunJp7aoH6aDXIth0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudektddgtdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnhephefhhfettefgkedvieeuffevveeufedtlefhjeei
 ieetvdelfedtgfefuedukeeunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
 hmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:gt0gZsLTGx3ZfHvfNCa_b4jvfsReU6WVuHEudX0-bsxFghdOXexUFw>
 <xmx:gt0gZvI5NRSGErusnTGK4lRQa7WwVvAScYYdSNac1cZQueHVXG1fEQ>
 <xmx:gt0gZly0tzTxyT4Cir3XB12l2I7sUcOuZ95iC162Q28OCjbsY_s6gg>
 <xmx:gt0gZrIEsP1gq7KhBinvLaIsb3sFfBSary6eRxvM1oylMVUSUqBbEg>
 <xmx:gt0gZmXTnhTRQuXFZRmJjc-9JaM3k4OpmGwHBffLOG5R-VPlqXFHPJ8b>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 18 Apr 2024 04:44:49 -0400 (EDT)
Date: Thu, 18 Apr 2024 17:44:46 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Thanassis Avgerinos <thanassis.avgerinos@gmail.com>
Subject: Re: Security issue in linux/drivers/firewire/nosy.c
Message-ID: <20240418084446.GA16391@workstation.local>
Mail-Followup-To: Thanassis Avgerinos <thanassis.avgerinos@gmail.com>,
 linux1394-devel@lists.sourceforge.net
References: <CAFK=-gY++P_fUyEz36CE8U7qER2_ebJMTkb6-d4Ts6XpcHBzaQ@mail.gmail.com>
 <b260bb9c-edf8-4bfd-8a3f-2257f31bc9ee@app.fastmail.com>
 <CAFK=-gZm4iOVJKi7_1UVx2vMwFZmKs54vbXVowbqnoAiBZfZUQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFK=-gZm4iOVJKi7_1UVx2vMwFZmKs54vbXVowbqnoAiBZfZUQ@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Wed, Apr 17, 2024 at 11:46:47AM -0400,
 Thanassis Avgerinos
 wrote: > Hi Takashi, > > Apologies for the delay, and thank you for the super
 fast response! Please > find attached a possible patch for t [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1rxNO9-0007jU-JM
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

On Wed, Apr 17, 2024 at 11:46:47AM -0400, Thanassis Avgerinos wrote:
> Hi Takashi,
> 
> Apologies for the delay, and thank you for the super fast response! Please
> find attached a possible patch for this issue. It should be
> self-explanatory but you may have a better suggestion on how to handle it.
> Please let me know and I'm happy to make changes as needed.
> 
> After this is patched, would it be possible to issue a CVE for it? Would
> you be the best person to help me with this?
> 
> Best,
> Thanassis

Thanks for the patch to fix the TODO, however would I ask you to send it
again with your `Sign-off-by:` tag? It is mandatory in usual kernel
development process, and I can not apply any modification about it, with
the respect to copyright, sorry.

I have a nitpick about the return value at the case that the user
process provides the insufficient size of buffer against the data stored
in kernel space. In the case, the typical UNIX-like kernel returns zero
instead of -EINVAL. We should follow to the convention if we have no
specific reason, in my opinion.

> From f7ee97fabe1519225ba30fd9454344d0a75f4d94 Mon Sep 17 00:00:00 2001
> From: Thanassis Avgerinos <thanassis.avgerinos@gmail.com>
> Date: Wed, 17 Apr 2024 11:30:02 -0400
> Subject: [PATCH] firewire: nosy: ensure user_length is taken into account when
>  fetching packet contents
> 
> Ensure that packet_buffer_get respects the user_length provided. If
> the length of the head packet exceeds the user_length, packet_buffer_get
> will now return -EINVAL to signify to the user that a larger data
> buffer is required. Helps prevent user space overflows.
> ---
>  drivers/firewire/nosy.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/firewire/nosy.c b/drivers/firewire/nosy.c
> index b0d671db178a..b1dccf3ba8f9 100644
> --- a/drivers/firewire/nosy.c
> +++ b/drivers/firewire/nosy.c
> @@ -148,10 +148,12 @@ packet_buffer_get(struct client *client, char __user *data, size_t user_length)
>  	if (atomic_read(&buffer->size) == 0)
>  		return -ENODEV;
>  
> -	/* FIXME: Check length <= user_length. */
> +	length = buffer->head->length;
> +
> +	if (length > user_length)
> +		return -EINVAL;
>  
>  	end = buffer->data + buffer->capacity;
> -	length = buffer->head->length;
>  
>  	if (&buffer->head->data[length] < end) {
>  		if (copy_to_user(data, buffer->head->data, length))
> -- 
> 2.23.0


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
