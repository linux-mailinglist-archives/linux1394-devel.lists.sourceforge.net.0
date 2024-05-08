Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DFF38BF9DA
	for <lists+linux1394-devel@lfdr.de>; Wed,  8 May 2024 11:54:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s4e0P-0005TV-1h;
	Wed, 08 May 2024 09:54:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s4e0N-0005TN-A7
 for linux1394-devel@lists.sourceforge.net;
 Wed, 08 May 2024 09:54:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h2YNeouZG7QNm2DhbCVNKqFB+E2lilrvJm0btMHZ2I0=; b=Vhqp6yLRZSsnInOwTSL6UT0YgE
 tAczHpo3xWfz2reXeNRouvHY73pK5/XwWRdE+q8CVKpaogJi0gbYg4t2ODHaHplbpAiBqO3rk/3Sq
 7JlsYm932S4dBfv9SUSQ+yaQxAeQi6Ot7NOWZUROMIGriIYeer2E8iHmNsOKY4QkDpm8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=h2YNeouZG7QNm2DhbCVNKqFB+E2lilrvJm0btMHZ2I0=; b=htOZOpj03ee/rsuh0LXBruUad+
 taKj96R0rrexm07mLzlXKAmk1XqW/I6UiqC083e35zsP3Gw/xARJyRvhMhjJxKjhmPon5ddD5ur8y
 XXcpeGragJL0Eh/SQh/CYXJYZkT1s0i375tKqNq6IFxDHj1D/YsjP1WE2qK3yGkTkWHg=;
Received: from fout7-smtp.messagingengine.com ([103.168.172.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s4e0M-0001jv-F9 for linux1394-devel@lists.sourceforge.net;
 Wed, 08 May 2024 09:54:31 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailfout.nyi.internal (Postfix) with ESMTP id 128D91380FEC;
 Wed,  8 May 2024 05:54:24 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Wed, 08 May 2024 05:54:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1715162064; x=
 1715248464; bh=h2YNeouZG7QNm2DhbCVNKqFB+E2lilrvJm0btMHZ2I0=; b=E
 OzF3R/6jG1MR/oLES9tVrSzHl+ypqLU9jDCGweC6ywIsUKlz6u3Phda8J9ueXlF2
 En/NFenspOZv6DCzEOESyZy4D2Anlf/6e/d4Xc/TVFNoqRto1wk7OMvSbUZ8cpJi
 ki/+w/9ZFeXyn2CbmOkVx9aIAzsy/tAr4ykX/4v6jEub5nhlD2VDsVb5xviNV6/S
 st+FodVGYgdowhjGe/IXSts7/XiIrKZt/Dnh2xjo08I+XlD5k/pK+O1O9Woxmw5c
 wJ4u+v7nZ6Y9GqNB2K6kW4m2EGTiN62iIYg6k9PUIWi8EYTMRkoeA+REU0QlsmGj
 F2YpE4wWjknHISGWIcWdw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1715162064; x=1715248464; bh=h2YNeouZG7QNm2DhbCVNKqFB+E2l
 ilrvJm0btMHZ2I0=; b=ZJwH4v8vAuHiIiGRN8hB/brgPp/5gmqApA3O9yqqhrF5
 tAT3U3r6e81taaRxYSNSmZArnySyxnDmG1JYLsbJMRDtD8RG55bV2OEZ+1orWDw2
 uANOPDJrx0MEwPZyQFLWWEturpJxnN5PyzLX1VLvMvdORnDForxs0dWrTmKk6K9g
 P42aueKLiIq1CeUylCMWF1WdqsqzO+i6S1vd6/O8Alt5hg8yomfgKCmFnHF0PLy8
 s5hBVSh0qeAfUzCilbFHoVARXoSozV935M4ovbZgLj+4J1JpW+jPSIroVBvUktm9
 7JnOhXwYQ7SaqQxH+kToNjliOL1HJJDKLt/W6JZlrQ==
X-ME-Sender: <xms:z0s7ZgLNIUHOekJkbE_U7gT8hTXineLm4kGgAoTnxFvqHqnGN6Xo4w>
 <xme:z0s7ZgIyYht92PR0cIwcfxh5ZTkfepXW2ZA1RaSTKfTxz01cACzrziRD47zf0djf8
 AsFbfVZibk-A0kdMCM>
X-ME-Received: <xmr:z0s7Zgtv9a5PYuYNsUJ92lhI9WzOpgrawxTS1T0aJL0HqJSMtb1ZF1zyKp5ifkfxXWA3nKBBGKUWhSLoFoKDXYP7leWoSnisvRE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdeftddgvddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttd
 ertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeehhffhte
 etgfekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeuudekueenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:z0s7ZtaVSy3gwRvUu4yHbasR0-Ua5GhNL75gSmnN457aJ3KHqP4z6Q>
 <xmx:z0s7ZnbUWCNvwbjV63qXyl7RE5HrrPF7md487K4cB-x4xtqieP53Qw>
 <xmx:z0s7ZpAWY40rZL2UrRs8WUZaD4IwB_mjjo23aBAR2b-FzugXiSVCdw>
 <xmx:z0s7ZtaM01iqAZ1NvnxSogf2gObfzjuLOaUT4HgBAkAyYyMSKNpg5w>
 <xmx:0Es7Zmm6QXat8w3_x8aWsGyW6P-DEdPPpYX3_Cz_JJ4NBVd1abmOzeeH>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 8 May 2024 05:54:22 -0400 (EDT)
Date: Wed, 8 May 2024 18:54:19 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH] firewire: core: fix type of timestamp for
 async_inbound_template tracepoints events
Message-ID: <20240508095419.GA433207@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20240506082154.396077-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240506082154.396077-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, May 06, 2024 at 05:21:53PM +0900, Takashi Sakamoto
 wrote: > The type of time stamp should be u16,
 instead of u8. > > Signed-off-by:
 Takashi Sakamoto <o-takashi@sakamocchi.jp> > --- > include/t [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.150 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1s4e0M-0001jv-F9
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

On Mon, May 06, 2024 at 05:21:53PM +0900, Takashi Sakamoto wrote:
> The type of time stamp should be u16, instead of u8.
> 
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  include/trace/events/firewire.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/trace/events/firewire.h b/include/trace/events/firewire.h
> index cd6931b134ee..d695a560673f 100644
> --- a/include/trace/events/firewire.h
> +++ b/include/trace/events/firewire.h
> @@ -106,7 +106,7 @@ DECLARE_EVENT_CLASS(async_inbound_template,
>  		__field(u8, generation)
>  		__field(u8, scode)
>  		__field(u8, status)
> -		__field(u8, timestamp)
> +		__field(u16, timestamp)
>  		__array(u32, header, ASYNC_HEADER_QUADLET_COUNT)
>  		__dynamic_array(u32, data, data_count)
>  	),
> -- 
> 2.43.0

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
