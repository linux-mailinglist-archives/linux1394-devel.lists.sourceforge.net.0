Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1B71E047F
	for <lists+linux1394-devel@lfdr.de>; Mon, 25 May 2020 03:45:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jd2B1-00008P-LG; Mon, 25 May 2020 01:45:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1jd2B0-00008B-Dy
 for linux1394-devel@lists.sourceforge.net; Mon, 25 May 2020 01:45:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w8gtuLdhRhjlG/R+K3KScUqE3pgNDvo53M+1qyJesbk=; b=Uri9c8QuJFM0zfAWiFD4GVr2qo
 pbHui5cwPFR0zi4ZyZEnZh+k5Y2KWmMCPf6FXZqtWQzDyrGvs9qtSVg4op/d+5ylXpjil6bqLnEyn
 3hOGGA8Lu6jNvbk43oJfuEGgCri0gdhXhioMvdrsTWYIdAnLbRHVm0K1x36cGZL9RSmo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=w8gtuLdhRhjlG/R+K3KScUqE3pgNDvo53M+1qyJesbk=; b=OxsP4ybEOWmKkuzM65zYojwgca
 DFQ4z2Ta5WxLG8K6zG5EGBr+6IigAkHzOZwvRMMoqZair06/RkUzz682eoMh52y6Rsp0lK14P3bpy
 KLvqtz8KrPlq6O9Vu74NOa39NmQbyi/aCyjVYHnvJ3e3wrMkffs+Jwn/MYiBSTRawfys=;
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jd2Ay-00CT1Q-HB
 for linux1394-devel@lists.sourceforge.net; Mon, 25 May 2020 01:45:14 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailout.west.internal (Postfix) with ESMTP id ACDD278C;
 Sun, 24 May 2020 21:45:04 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Sun, 24 May 2020 21:45:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=w8gtuLdhRhjlG/R+K3KScUqE3pg
 NDvo53M+1qyJesbk=; b=kkqXywBzEe6SfCh5kXCpWUHn5r/0p3WrB/XkL3kYbgc
 /Yzs9rzjUBej5g3GDMC8rEa19tPMjGptGBufe4xgYECp73zXbCZKqmu+RUpsI9eK
 lExlWPNPxyrqQFgtwR4yBFR9fy/zO2Ug611xP6Ceo1wVUx65rTlDZf6COOdVm8LW
 Hiq1Aphahf2Bk7rPgI1P3F0tWrX3mOwX5BafjbXaOImClCirQcGmEh6HoCeZtw6k
 NLbV+Uh1IbO5mYGmWa7VCgxcn6w5hQab2merp8KsLzxiFKe0ajrrvQX/HXS58Ke4
 9rRYjliwAH1te4ucMzhnASQav3vQwUsDrSAIjn3s7jw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=w8gtuL
 dhRhjlG/R+K3KScUqE3pgNDvo53M+1qyJesbk=; b=rQyUpMEIuZ923uXnaBkmWp
 q8fumpUSSS4mI6wb0VAAa9eLGtg7wzzjPt1do/I4JqxZ4heKfpt4+rHp/keN75Fi
 gefHESPEIEwLM1Cgpg6GA+0s2i0AxumtMgCQG9T1vAxWeDfJRM2ywxyGkJx7Mfki
 CI0GLJnKPJjKoOD9y9mcLyKWkfbN8spKTvBhkukzxcMhtLUkI9edMomhSz3+sKln
 Q7Ic1z0uQ6u1zk/wdfoiG9hGgBHWEsZNBNsQGf3j8eKB7E7fU2vfEu8hvVOACARk
 Bm0TCmjClBYimHDBx2IF89jYfxULx6wc5cLKwinxbCGR2phRhVJ8+DbEwzmls6iw
 ==
X-ME-Sender: <xms:HyPLXsO6B2wXlrpoG3Aw25ILI5-SNnPlX_pS28GFP4A-L08TtSYqMg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudduledggeelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghkrghs
 hhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjh
 hpqeenucggtffrrghtthgvrhhnpeelhfeugedvjefgjefgudekfedutedvtddutdeuieev
 tddtgeetjeekvdefgeefhfenucfkphepudektddrvdefhedrfedrheegnecuvehluhhsth
 gvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihes
 shgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:HyPLXi_Tz36pYaNV4MPPjzsXMK48sdEFXUY7Wk3LeQ3UiaQdH1QPaQ>
 <xmx:HyPLXjR97R5quMcaCIIyX5gKsldl1D0Ytsj-DNz_BhYd6fE0DiEPtg>
 <xmx:HyPLXktzblJ3P5EeqKJqemTL7S6OAmJS8sMj7_NUz9Nm16C-VwJmSw>
 <xmx:ICPLXj6mkXxd-0uffftvQfE6qMQFl6Jdp9htaltvYtx5PAP3DUX57Q>
Received: from workstation (ad003054.dynamic.ppp.asahi-net.or.jp
 [180.235.3.54])
 by mail.messagingengine.com (Postfix) with ESMTPA id 0511C3066544;
 Sun, 24 May 2020 21:45:00 -0400 (EDT)
Date: Mon, 25 May 2020 10:44:58 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Stefan Richter <stefanr@s5r6.in-berlin.de>
Subject: Re: [PATCH v2] firewire-core: remove cast of function callback
Message-ID: <20200525014458.GA252667@workstation>
Mail-Followup-To: Stefan Richter <stefanr@s5r6.in-berlin.de>,
 Greg KH <greg@kroah.com>, oscar.carter@gmx.com,
 keescook@chromium.org, kernel-hardening@lists.openwall.com,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 clemens@ladisch.de
References: <20200524132048.243223-1-o-takashi@sakamocchi.jp>
 <20200524152301.GB21163@kroah.com> <20200525015532.0055f9df@kant>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200525015532.0055f9df@kant>
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [64.147.123.21 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: callback.mc]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jd2Ay-00CT1Q-HB
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
Cc: oscar.carter@gmx.com, keescook@chromium.org,
 kernel-hardening@lists.openwall.com, Greg KH <greg@kroah.com>,
 linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Mon, May 25, 2020 at 01:55:32AM +0200, Stefan Richter wrote:
> > Why is this in a .h file?  What's wrong with just putting it in the .c
> > file as a static function?  There's no need to make this an inline,
> > right?
> 
> There is no need for this in a header.
> Furthermore, I prefer the original switch statement over the nested if/else.
> 
> Here is another proposal; I will resend it later as a proper patch.
> 
> diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
> index 719791819c24..bece1b69b43f 100644
> --- a/drivers/firewire/core-cdev.c
> +++ b/drivers/firewire/core-cdev.c
> @@ -957,7 +957,6 @@ static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
>  {
>  	struct fw_cdev_create_iso_context *a = &arg->create_iso_context;
>  	struct fw_iso_context *context;
> -	fw_iso_callback_t cb;
>  	int ret;
>  
>  	BUILD_BUG_ON(FW_CDEV_ISO_CONTEXT_TRANSMIT != FW_ISO_CONTEXT_TRANSMIT ||
> @@ -969,20 +968,15 @@ static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
>  	case FW_ISO_CONTEXT_TRANSMIT:
>  		if (a->speed > SCODE_3200 || a->channel > 63)
>  			return -EINVAL;
> -
> -		cb = iso_callback;
>  		break;
>  
>  	case FW_ISO_CONTEXT_RECEIVE:
>  		if (a->header_size < 4 || (a->header_size & 3) ||
>  		    a->channel > 63)
>  			return -EINVAL;
> -
> -		cb = iso_callback;
>  		break;
>  
>  	case FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL:
> -		cb = (fw_iso_callback_t)iso_mc_callback;
>  		break;
>  
>  	default:
> @@ -990,9 +984,15 @@ static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
>  	}
>  
>  	context = fw_iso_context_create(client->device->card, a->type,
> -			a->channel, a->speed, a->header_size, cb, client);
> +			a->channel, a->speed, a->header_size, NULL, client);
>  	if (IS_ERR(context))
>  		return PTR_ERR(context);
> +
> +	if (a->type == FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL)
> +		context->callback.mc = iso_mc_callback;
> +	else
> +		context->callback.sc = iso_callback;
> +
>  	if (client->version < FW_CDEV_VERSION_AUTO_FLUSH_ISO_OVERFLOW)
>  		context->drop_overflow_headers = true;

At first place, I wrote the similar patch but judged it's a bit ad-hoc
way that callback functions are assigned after the call of
fw_iso_context_create() in raw code. For explicitness in a point of things
being declarative, I put the inline function into header, and avoid
someone's misfortune for future even if IEEE 1394 is enough legacy.

Anyway, I don't mind Stefan's proposal since it works well. It depends
on developers' fashion to choose policy to write codes.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
