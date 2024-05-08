Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B688E8BF9DC
	for <lists+linux1394-devel@lfdr.de>; Wed,  8 May 2024 11:55:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s4e0k-0002Pd-13;
	Wed, 08 May 2024 09:54:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s4e0j-0002PU-3C
 for linux1394-devel@lists.sourceforge.net;
 Wed, 08 May 2024 09:54:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Tj2F6+Vw3OTzzfc8yd2SH2593sFycDAClFvqFzQ0epo=; b=fcFCafuwtvlH2MD3d9H82KZMgs
 lZ9QY9mqlZ45PR+0ype1VkHYaXbB6WCNzHpxzufm0i1TSMPEeSq/n48DuIft+S7r79REybEgzDdv7
 3McDoLNmGlXZZXxSibPEx4r/B5o8SN57IjQId8u9MKdYr7mZPtxwb6+60IyAFwh8mQcI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Tj2F6+Vw3OTzzfc8yd2SH2593sFycDAClFvqFzQ0epo=; b=Luil+pENrdniBagc+bpfiIrZab
 viH4lHLRx8/YYiRjdRYwkOWN/ngzIbQvluKWek1/A8lOZIGil2p8CEeqRK+/fA8p79R2QWZMerEi4
 QYaHQ+bEtJuhIEhOZuFDRK/tuNGME0ftMaSWSIZmf+MIGHsN4AGxsPKGf9KKRDJNnBeA=;
Received: from fout7-smtp.messagingengine.com ([103.168.172.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s4e0h-0001kg-BM for linux1394-devel@lists.sourceforge.net;
 Wed, 08 May 2024 09:54:51 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailfout.nyi.internal (Postfix) with ESMTP id 07EC71380FEA;
 Wed,  8 May 2024 05:54:40 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Wed, 08 May 2024 05:54:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1715162080; x=
 1715248480; bh=Tj2F6+Vw3OTzzfc8yd2SH2593sFycDAClFvqFzQ0epo=; b=K
 xdfiOLU1OGGCqyA0PaQ94qtdH/422k62p8xS61GjDydkhlFIG1yfSuSqF2lS9wXS
 EfbMU/9cZl5ygxxQj7B+1t89tSWH3gKt8lCQj9QIZs6AsMsCO4OYyTPCjaa8vUSW
 PekLMLIT3C/Qtvg2NxvkUBZJ1X92a4q4Xg1dFR/vefVyGa9MPxACt2fp2kZQeoA7
 gP6RS3KH5u6LXXspxJGP/V589kQEfravvN4YJBxDdkW4d5N65Zy1i0kijKu2y5sS
 EFHFN9kpYiSYWIRYWmC4nKX+adyXJRsQc+2GWj7jHNztguM0BAJRQjZ/gO7LVGl3
 OIPFCpsSrCn1Ka/IdZctg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1715162080; x=1715248480; bh=Tj2F6+Vw3OTzzfc8yd2SH2593sFy
 cDAClFvqFzQ0epo=; b=UNbvlddN4kstGPMQ1G66+2/3U3FsKEUwZ9zIKErgEubL
 Aiuhp6lfUItE0E/QKhTlqB5tv1pGHHhqD/6Wd2I3yTkCOU9CL2E7zfwrecEzJiRp
 lzPgO2eXamWIid15aH5SEzHUQpL/WcmUfeqoVgCl96rfn9oKTYUY1kejkp+aNLxb
 RufBeziyUS01MZeKQh1jAgD3e9YQWZ8oIJuAHGmUMDpXTBhYuOE7LrGr63FyQkoF
 yMPmHK3Q39jkTCF/iQt74mQrPRXOFA8YewKRuS5VojVUZEl+IDF/ybZhazmR2+dx
 ZrFTMmf15x9IjUk3uyPhWF1RmW6JEMT4VstLzsSSxQ==
X-ME-Sender: <xms:30s7Zmfa2HL00yUPM2AR6fipcfEAXk0bS5xk5Sr38y9jeSGmlr5Ivw>
 <xme:30s7ZgOkd6v-qeUet9JtWb0kWqQnN2xPjHqj2uW4myyH3F9W7DiMa9z9kUYbXKvuH
 bbTJodkoEPW3nUAuK4>
X-ME-Received: <xmr:30s7Znjfb0OstU-3QgX5YrwCMkwOFlzGykqGhKwp6xo8-IxzlSZQ6cAeRRsADwUoDWcjNeIpGkGF8v-p6X1JA-odd9esbvCb6No>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdeftddgvddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttd
 ertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeehhffhte
 etgfekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeuudekueenucevlhhushht
 vghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:30s7Zj9i65AiGSy3k3GgOkOG_BWjOe0rAR9wNAUeAC840ngfcLXfpg>
 <xmx:30s7Zisz1Z6HaF7IupUJol3LUbGAI04oSuaddiElpyizgHROU7QtMw>
 <xmx:30s7ZqEHSiOX_lRaMgpc4tDdng_FH7SduT36qUhSmwzDneU7aKLCjQ>
 <xmx:30s7ZhN3aaKGbRUrc2XeXkpIWBweP2T81_fIxa6lVJS51J2Ug45INg>
 <xmx:4Es7Zr5aRbvKa-honvwebJgpGIy4UL6KwuCyfzwyt-C2SdPcHQc7fcyJ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 8 May 2024 05:54:38 -0400 (EDT)
Date: Wed, 8 May 2024 18:54:36 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH] firewire: core: remove flag and width from u64 formats
 of tracepoints events
Message-ID: <20240508095436.GB433207@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20240506082154.396077-1-o-takashi@sakamocchi.jp>
 <20240506082154.396077-2-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240506082154.396077-2-o-takashi@sakamocchi.jp>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, May 06, 2024 at 05:21:54PM +0900, Takashi Sakamoto
 wrote: > The pointer to fw_packet structure is passed to ring buffer of
 tracepoints
 > framework as the value of u64 type. '0x%016llx' is used [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.150 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1s4e0h-0001kg-BM
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

On Mon, May 06, 2024 at 05:21:54PM +0900, Takashi Sakamoto wrote:
> The pointer to fw_packet structure is passed to ring buffer of tracepoints
> framework as the value of u64 type. '0x%016llx' is used for the print
> format of value, while the flag and width are useless in the case.
> 
> This commit removes them.
> 
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  include/trace/events/firewire.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/include/trace/events/firewire.h b/include/trace/events/firewire.h
> index 4163959be57a..cd6931b134ee 100644
> --- a/include/trace/events/firewire.h
> +++ b/include/trace/events/firewire.h
> @@ -221,7 +221,7 @@ TRACE_EVENT(async_phy_outbound_initiate,
>  		__entry->second_quadlet = second_quadlet
>  	),
>  	TP_printk(
> -		"packet=0x%016llx generation=%u first_quadlet=0x%08x second_quadlet=0x%08x",
> +		"packet=0x%llx generation=%u first_quadlet=0x%08x second_quadlet=0x%08x",
>  		__entry->packet,
>  		__entry->generation,
>  		__entry->first_quadlet,
> @@ -245,7 +245,7 @@ TRACE_EVENT(async_phy_outbound_complete,
>  		__entry->timestamp = timestamp;
>  	),
>  	TP_printk(
> -		"packet=0x%016llx generation=%u status=%u timestamp=0x%04x",
> +		"packet=0x%llx generation=%u status=%u timestamp=0x%04x",
>  		__entry->packet,
>  		__entry->generation,
>  		__entry->status,
> @@ -273,7 +273,7 @@ TRACE_EVENT(async_phy_inbound,
>  		__entry->second_quadlet = second_quadlet
>  	),
>  	TP_printk(
> -		"packet=0x%016llx generation=%u status=%u timestamp=0x%04x first_quadlet=0x%08x second_quadlet=0x%08x",
> +		"packet=0x%llx generation=%u status=%u timestamp=0x%04x first_quadlet=0x%08x second_quadlet=0x%08x",
>  		__entry->packet,
>  		__entry->generation,
>  		__entry->status,
> -- 
> 2.43.0

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
