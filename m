Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 92DC2BFA412
	for <lists+linux1394-devel@lfdr.de>; Wed, 22 Oct 2025 08:37:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oSDYFfKjS9dNBhp1qsl1IX39y6v1kvtkDqrVJqEaZvI=; b=MFPIUFfPhZpIFqBxPhJgxALnIm
	mz0Sj3xBRcIhvomh8AYEOu6/WhTxFXJVbOvMjfueh/mafEK+ISqkhfUhqIgVEDYmMyJToEYcdOjkb
	H+UQeTFm4DCi8XgUXMrHY9Z6B+emjda8PY9LbkT06gxjyhVWTOtp8VhjpNBp+a2ZVA/k=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vBSSs-0006Lc-5c;
	Wed, 22 Oct 2025 06:36:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <adamg@pobox.com>) id 1vBSSr-0006LN-2h
 for linux1394-devel@lists.sourceforge.net;
 Wed, 22 Oct 2025 06:36:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+ZaFW/FSZ9E7Hya66Nnk4Jfb/XsMc4cpEBCxrDeBXK8=; b=U0ZySHS8xI7QQQQNUptOygwfvu
 kNbNsWuob8cyc74ikFy3xh2hg2REsNNlsfD2zj3x/b0/5GbW7bgUC0J4nD+c4VpLD3Mca7Lo9ndqB
 1mPucZndgAw9p+l+zw9oslsQCtbYJLPPd0koXK9m70omX3uCbNTLKP+4m5dWpaSarBDc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+ZaFW/FSZ9E7Hya66Nnk4Jfb/XsMc4cpEBCxrDeBXK8=; b=MrT1YWT0BUtirul5NQcogidzia
 Fw8OaUY7l94N7VNbkONrjKy9XW1+ea2UfEyLysAXJN8Q4gd12RyZe4khxdv/5MnvPOd86bGqe7HYO
 97VWeisO2Aw//yPI3pIBzuq/BzF3Lx2VADCnw3YYzh6qRl45X1+JRzqab7uoUg4+JsBs=;
Received: from fhigh-a4-smtp.messagingengine.com ([103.168.172.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vBSSq-0000D3-TZ for linux1394-devel@lists.sourceforge.net;
 Wed, 22 Oct 2025 06:36:53 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfhigh.phl.internal (Postfix) with ESMTP id BF80114001D6;
 Wed, 22 Oct 2025 02:36:46 -0400 (EDT)
Received: from phl-frontend-01 ([10.202.2.160])
 by phl-compute-06.internal (MEProxy); Wed, 22 Oct 2025 02:36:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pobox.com; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm1; t=1761115006; x=1761201406; bh=+ZaFW/FSZ9
 E7Hya66Nnk4Jfb/XsMc4cpEBCxrDeBXK8=; b=PHi9sso/8w6JCucFEBhPesl9Ee
 YAq/oDAKi55jzQBkIZcrlPwBv124BKVydONTRTwyY+gC3kh6LwVJEMwVPD6Jxyx5
 Vddc9E5qkShGLJCAoj3QE91BQ6rWtknDZMGHwMDdu02CB00TqJeWzTWFriYAjhxS
 NrYD8UxlgdSv40z0QAChQnRvjOAe0ekJwTEByuf7KJbkuOZHNUTCdM+IgQ4EUede
 gpcsOvfMkJhOn8NwpJutf1OvA59vYO3jy+QpcRGdrO5MeOZX6vMS/0wcR0u3//t2
 VMNk5yQCGGAwEzkD2NDRiAE9mwTc8n5Jd3ytQ/95LIu+RmIHagFjN3216+wg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1761115006; x=1761201406; bh=+ZaFW/FSZ9E7Hya66Nnk4Jfb/XsMc4cpEBC
 xrDeBXK8=; b=eP3fhbwLoEag+5o3PYATT1DITeS4CCvEjcXs/xjrr7o/lVKanJS
 /LJxgwx00O9tcmNZ7u6gN7fphgHsznCkV6iv9/7bHjQo5ggx2qEhZoblwOhTJCSu
 zxQb59IFm3zdY/gE0JHgYJGVqES7VOMRMMmUYMU+wwChIOTTZciIzj50hcwqyM7B
 CFwyvjzCmS09s+DNwoVRdm08tL2ESRn8tjGvLNZBO/I1YXZu/Cay814lqvUo1XBY
 02N39KGwCwZsYVuFkH5isU/hQ0IKwYwymONKZFQIo9vGmqAFMvYNLDZ/jzfU2dfj
 dpUgH8jAMdzAkp4ZxY++KV1Is54Ayil73Sg==
X-ME-Sender: <xms:fnv4aLxRxvSWb6rin5NgE48PdXr1UkVLY82_WQKImoazBEJ6ZaJaxg>
 <xme:fnv4aJRUw58-9qmGQ32LDkA4-baSej5csB7-3eTQvrO1a2MszNc709_zBqqjCAdsG
 sFf9YB9lPmzArQ3H2v-1BQAUcLkZH9xilvQywEepypPsYpnPeCUDwI>
X-ME-Received: <xmr:fnv4aC_x4AgkXkhZEhms0q4GKQxyoKLbxpWgQZ8GDfu3beqk6xoaxXULsf-L3moc4Oh7fjhoKla6LxYM8joJP4Vi>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddugedvkeejucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttdertd
 dttddvnecuhfhrohhmpeetuggrmhcuifholhgumhgrnhcuoegruggrmhhgsehpohgsohig
 rdgtohhmqeenucggtffrrghtthgvrhhnpeejudeggfelheeukeeuleeuveekffefteegje
 eltddttdevkeffgefhledvueetheenucfkphepudejvddrheekrdduudelrddvgedtnecu
 vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprggurghmgh
 esphhosghogidrtghomhdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhht
 pdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtg
 gvfhhorhhgvgdrnhgvthdprhgtphhtthhopehoqdhtrghkrghshhhisehsrghkrghmohgt
 tghhihdrjhhp
X-ME-Proxy: <xmx:fnv4aAo0pSEMP7_XCSjv1WZXwQ_zND7pGFa0bMFa-YsrhOCnMP0CFA>
 <xmx:fnv4aPmhFk85S1Qc8OvSHAnG8Kz-qGmfktD-JB2llR0hqSbMnUSrQQ>
 <xmx:fnv4aHKYTN_YAC3wc85HiWGsZCiAqga03wtDRx9DfzyBMCTVBd_gNA>
 <xmx:fnv4aEwHQCXP1rAxIYnKCJ9MSppGBks237jI2Wp0xlT6KLAtOtOoew>
 <xmx:fnv4aE20JsWN-0UT410GiB0lO2vSakr6WjMf1woftYprriwKy7Dbmi13>
Feedback-ID: i40e14970:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 22 Oct 2025 02:36:46 -0400 (EDT)
Received: from iguana.24-8.net (unknown [172.58.119.240])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature ECDSA (prime256v1)
 server-digest SHA256) (No client certificate requested)
 (Authenticated sender: iguana@pogo.deviceside.com)
 by pogo.deviceside.com (Postfix) with ESMTPSA id 0542EC00BA;
 Tue, 21 Oct 2025 23:36:44 -0700 (PDT)
Date: Tue, 21 Oct 2025 23:36:42 -0700
From: Adam Goldman <adamg@pobox.com>
To: Takashi Sakamoto <o-takashi@sakamocchi.jp>
Subject: Re: [PATCH 0/4] firewire: ohci: remove obsolete module-level debug
 parameter
Message-ID: <aPh7euUDRQFGeMkz@iguana.24-8.net>
References: <20250821003017.186752-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250821003017.186752-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Aug 21, 2025 at 09:30:13AM +0900, Takashi Sakamoto
 wrote: > The "firewire-ohci" module has long provided a "debug" parameter
 that > enabled debug logging by calling printk() from hardIRQ conte [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1vBSSq-0000D3-TZ
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

On Thu, Aug 21, 2025 at 09:30:13AM +0900, Takashi Sakamoto wrote:
> The "firewire-ohci" module has long provided a "debug" parameter that
> enabled debug logging by calling printk() from hardIRQ context.
> 
> Between v6.11 and v6.12, a series of tracepoints events have been added as
> a more suitable alternative. Since v6.12, a commit cd7023729877
> ("firewire: ohci: deprecate debug parameter") has already marked the
> parameter as deprecated.
> 
> This series removes the parameter, as its functionality is now fully
> covered by tracepoints.

Hi Takashi,

Now that the "debug" parameter has been removed, can you provide 
instructions for using tracepoints? For example, what is the new 
procedure instead of adding "debug=7" to the module command line? What 
is the equivalent to 
"echo -1 > /sys/module/firewire_ohci/parameters/debug"?

-- Adam


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
