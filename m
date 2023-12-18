Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A3B816E52
	for <lists+linux1394-devel@lfdr.de>; Mon, 18 Dec 2023 13:47:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rFD1U-0000Zo-FS;
	Mon, 18 Dec 2023 12:47:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rFD1S-0000Zg-Ij
 for linux1394-devel@lists.sourceforge.net;
 Mon, 18 Dec 2023 12:47:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Sp32Kv+FtgVwjl+FmjJanWnjE4SgTjgXVYd4enIlghQ=; b=FW2IsMqCsVprDFk4gpkbJNxL8y
 ovL0fVwGswCVYi6ekcg2ZAm0bKrqM29mC0WeRdCkbd8XyFIBc8PIGhCgthKOiin5bitabj5q/GE6i
 AwdYWYUijwP1Z/A6UJKo9pDfXde304DtAQDP+K6oc3TDWx9ANhf1XLByEmgnZ9a+Es5U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Sp32Kv+FtgVwjl+FmjJanWnjE4SgTjgXVYd4enIlghQ=; b=lRyzaAUZT0f8BZgxHLMu1A8rW9
 Cl5bIPiErxGJheltWmcJh4Z7l6L+mG865IwTergTAR/EnKoQSQOaDXBOGenOtmE0B3pRtgVaZIfvd
 kl/RUirUlHJ/DOxnA5bl5Joir3vb2Op4Rk1y8SAbscv5z7aOIOn/VcuUnaytL3K2hWyA=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rFD1N-0007yg-Tb for linux1394-devel@lists.sourceforge.net;
 Mon, 18 Dec 2023 12:47:01 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 88C1D5C00CA;
 Mon, 18 Dec 2023 07:46:50 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 18 Dec 2023 07:46:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1702903610; x=
 1702990010; bh=Sp32Kv+FtgVwjl+FmjJanWnjE4SgTjgXVYd4enIlghQ=; b=l
 BwINm1SPVYf/2xehUq8cI0Pan7ZFfVrVl5KaBov3E6F/LkWo/G5T9O50Ul1rfunP
 6nhpVjRtgtG9VpcDQGtN3gLpWDpOo7eksvJOI1D1nPsKB2jjJLKwxvYtVw/y76FI
 XVvZOI24OHF1RaLM1DWklgsB112WcueZdeBgioXFc11j2MqPG/JIdTim5OZZV0eI
 wi9Mih4vKgWhHLB9R3T5nrFEPTpPB9Qcqu+BMEsFJ4BB5gCfh/gMvG1pZbEXXttw
 vQsxlOF6rqA4KpfSpmSP6OC3CWR+GxfUZPgLF3kRprijmT7oZ0wIOkBOWSGc6KYw
 XAdCN/n+q6W6L7Hy1a/RQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1702903610; x=1702990010; bh=Sp32Kv+FtgVwjl+FmjJanWnjE4Sg
 TjgXVYd4enIlghQ=; b=fwDsPFb78Bn/QPrqT3e7IO5SbbQjzk438KtHqj4uNRfL
 3NTsLKZZgd1kwYS7XEc9/dri3Ld74Rv6HDG3GpDuqB/4TRszTi9siDD6tNyfjty/
 sGhbKvpsU59g1KdKPeZKQJzSCMLxUxksFvd0HprRohdikV1rZmgAIjb2gVaTEeUc
 K4FRFZ/eXygez6Nxmy/LfS2chHllkJX5kB1HWl/H66kVzbYRyauDYsglacQtHi4e
 yKwKZvMTvdU6z09F9VXEggwTQvAVmOi+23PvEjCIk8YvSX0u9WnWA3JQTniFmKcN
 HHQrKYgiKyfqgUkQbRbP7A1lmH2bZusb+9oRHli8uQ==
X-ME-Sender: <xms:Oj-AZZIJkcnuBN91mubhrDN9OQ4wBx-8V2BCf14dZF4FxlsEK02X9A>
 <xme:Oj-AZVJb6Nc5xu14I0dS1bz5FIPZweUoxlnd3_UvyQ_VbYoJdCEa7tCvUabU5FK0H
 H2_QTmHAvIZQC0ygTY>
X-ME-Received: <xmr:Oj-AZRvm8vIHTds7C39m_1chTwLWoLI0snDhoxt5Ih4d6evmn7h_7_zmkAFCW22j97XMckOxiS_F3-RUwN44xTD6zhdEBXXGIAs>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvddtkedggeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnhephefhhfettefgkedvieeuffevveeufedtlefhjeei
 ieetvdelfedtgfefuedukeeunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
 hmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:Oj-AZaan73ujZ4Ps0L7yC-7pKxLNsWQt8TaomS_gQhFcENaETor3OQ>
 <xmx:Oj-AZQZK9dIvTHjAk9mi6SdqxEowlkZ7-ks-elcH-HWitHdOFiaYnQ>
 <xmx:Oj-AZeCEYCWV8TeroqsKByESZB3EP5jKjLjXIocUSQeXNCMpfWIlTA>
 <xmx:Oj-AZbzBWUNtq3ocNaweT8Sq-4WpTcWdLHAPt3Bt_JY6_A5z-FOwiQ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 18 Dec 2023 07:46:49 -0500 (EST)
Date: Mon, 18 Dec 2023 21:46:45 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Adam Goldman <adamg@pobox.com>
Subject: Re: [RFC PATCH 8/8] firewire: core: change modalias of unit device
 with backward incompatibility
Message-ID: <20231218124645.GA46034@workstation.local>
Mail-Followup-To: Adam Goldman <adamg@pobox.com>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
References: <20231217103012.41273-1-o-takashi@sakamocchi.jp>
 <20231217103012.41273-10-o-takashi@sakamocchi.jp>
 <ZYAa0vJYppKgr9x7@iguana.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZYAa0vJYppKgr9x7@iguana.lan>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Mon, Dec 18, 2023 at 02:11:42AM -0800, Adam Goldman
 wrote: > Hi, > > On Sun, Dec 17, 2023 at 07:30:12PM +0900, Takashi Sakamoto
 wrote: > > + vendor_directory = search_directory(root_directory, CSR_ [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rFD1N-0007yg-Tb
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
Cc: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Mon, Dec 18, 2023 at 02:11:42AM -0800, Adam Goldman wrote:
> Hi,
> 
> On Sun, Dec 17, 2023 at 07:30:12PM +0900, Takashi Sakamoto wrote:
> > +	vendor_directory = search_directory(root_directory, CSR_DIRECTORY | CSR_VENDOR);
> 
> Setting the CSR_DIRECTORY bit here is extraneous since search_directory() also sets it.

Indeed. It is redundant.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
