Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1AD7003E0
	for <lists+linux1394-devel@lfdr.de>; Fri, 12 May 2023 11:36:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1pxPCK-0006nD-Hy;
	Fri, 12 May 2023 09:36:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1pxPCJ-0006n4-BI
 for linux1394-devel@lists.sourceforge.net;
 Fri, 12 May 2023 09:36:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pnfmXPTPbtWTIoaRTw/1W6FSPLFdzGDXUlLgZCpR8eI=; b=aMUPl79axG39YFwZaNKFYJ2olw
 UEGy/USuJ7gmHtc+3nsxJwKjk10LLNdxfhZ1QDjVlp7bSArVwXMNTBXZfkZFtCB6Kzs0Ye2gihxyo
 Hc33a3QmJvr+V79j21giKAzL3PVVyceICSV8J0eZf+mPXxulHLeI6BxT9s7STWzr34J8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pnfmXPTPbtWTIoaRTw/1W6FSPLFdzGDXUlLgZCpR8eI=; b=ldF0TUP/6s9MzVGt5rLIK32YGL
 PBxubVLSH5tmDIWyV1VOU0bGvrIbS6WaIMFTu4QrNQQki7hwLuN1D9/s7VfIMznMG+hn0ZntkOesS
 AQ8csoNzVEYCNbTAIPXbNuuqzBBTXKFgau8uJNwW6JtJE1+Pob5Fj61n3AUr3pGg5nGs=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pxPCC-0002F7-DK for linux1394-devel@lists.sourceforge.net;
 Fri, 12 May 2023 09:36:24 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id 4C8B05C034B;
 Fri, 12 May 2023 05:36:08 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Fri, 12 May 2023 05:36:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm1; t=1683884168; x=1683970568; bh=pn
 fmXPTPbtWTIoaRTw/1W6FSPLFdzGDXUlLgZCpR8eI=; b=emHDmpT7k56UQ/HbVj
 U4UioudLnB5jSoESJqzQGM/KAP+E7lRyAm5sd2RMZbd8/EB8ARY5G3JmP8JHH5C5
 kIaUEdJdEaWUTrHfUmtr2B089AX3ASa6gAxM0ghZkoxQ6HOlIVY1yjXFfWKatqDu
 OuFDQNzyXX2I9VQ1p/yC6lDXlJUj6eMo/9q0gp4hb+rDQ9+tVwfcq2xX+hw8/aBX
 2BDOpv3y4Rj/w70GNwyu3DLCJkJO6hdkTxoyCVj8kqJRR41jRcqXcX0RFXkoH0Z2
 SgV4+OAKX8hG1Rtqx1bBet+DIazMvoIplVMyNiXTfFtRACvM2zRRl2LQgseE+hwM
 RHSQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; t=1683884168; x=1683970568; bh=pnfmXPTPbtWTI
 oaRTw/1W6FSPLFdzGDXUlLgZCpR8eI=; b=D8xFW1eqZa0uoSog7PkEMjmaxW2Qo
 DJ5JCSVgc6n0Wuris8uoU4zD1j2UiO/fitIpNpS0HGZEnNDu+/+nMmIZcfZwoZeO
 G+2sV1MLIOv5TmtJMRq4ve25si8DI/jFqKZ/h4cjCeEGSSX95pCUOb+ElHT6msis
 UqfJlpysGKXLlNfy2lMsuQHNdv8AzZNyysROgSClsZ9+KniWYB5TUulCGpNso8os
 egYy6MIaPVTvMvtrK2As82QtXn8Z+7NOGCc4if66og6uyA3oi2lsGI2fn8pR+Gnw
 aj9RSjnj9zROk+YyD/JtOyyZetOYNct2oKsf/aePDxuJhLePaeQJXa09w==
X-ME-Sender: <xms:hwheZEHF_ttmdtdBgTXgXEqdjGTfg04-xCR0wPA2PaPP22OuZ9Kzww>
 <xme:hwheZNV-lA4R4aBsJN0HSqEZTMaBbujP32E1tLZirQVqm_akyUz8QJZdcAvv9CM2h
 biqR_A96Az4x4RMreU>
X-ME-Received: <xmr:hwheZOK26TjOjRMg1ix1I9JNCAq2EKt3c-ijD1lsCVMdYv7HwMmRXZUoZO9eZrVe6TCFm8cXx4igY7u3ro1j-TEsFU8t>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeehtddgudekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
 dttddtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepjeegieefue
 evueefieeggeejledvgfejgeffjefgvdekleehgfdtfeetjeelkeejnecuffhomhgrihhn
 pehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
 grihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:hwheZGFWDQ8MuWJ739vptx0GJeG97g1kNQGir62I25vTsKIL86CVHg>
 <xmx:hwheZKWx-F9LY_nXnxeO9g4Ce-CklFas6X_VtQx_MCkPdGmd-_IPuQ>
 <xmx:hwheZJN9gKfnsOSSN6OXoZRBPX6I41oVL-Cb7plpZEQURRUlGUI8WA>
 <xmx:iAheZNdsug9ZiKFPwTXv8PnmIOk2n5kQvOyaQf5M5hwaWVrlPxT2MA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 12 May 2023 05:36:06 -0400 (EDT)
Date: Fri, 12 May 2023 18:36:03 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: clemens@ladisch.de, cladisch@googlemail.com,
 linux1394-devel@lists.sourceforge.net
Subject: Re: linux-firewire-utils in git.kernel.org?
Message-ID: <20230512093603.GA901787@workstation>
Mail-Followup-To: clemens@ladisch.de, cladisch@googlemail.com,
 linux1394-devel@lists.sourceforge.net
References: <20230422010027.GA56586@workstation>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230422010027.GA56586@workstation>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Still no response, while I forked it to git.kernel.org
 for further integration: *
 https://git.kernel.org/pub/scm/utils/ieee1394/linux-firewire-utils.git/
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1pxPCC-0002F7-DK
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

Still no response, while I forked it to git.kernel.org for further
integration:

 * https://git.kernel.org/pub/scm/utils/ieee1394/linux-firewire-utils.git/

The crpp script is written by Python 2 language. Python 2 is outdated. I
rewrite it by C language and push to the repository.

On Sat, Apr 22, 2023 at 10:00:27AM +0900, Takashi Sakamoto wrote:
> Hi Clemens,
> 
> It takes a bit long time since I see you in open list last time. I wish
> you are still of good cheer.
> 
> I decide to take over maintenance of Linux FireWire subsystem[1] and I'm
> preparing stuffs for the work with help of kernel.org administrators. If
> thing goes well, I'll start my task in next merge window for Linux kernel
> v6.4.
> 
> Well, if you don't mind, let us move the upstream of your
> linux-firewire-utils? I already prepared repository directories for
> utilities of Linux 1394[2]. Your software would locates under the directory.
> 
> In the case, I can maintain your software on behalf of you if you don't
> mind. Especially, I need new version of the software including crpp
> written by Python 3 for my work.
> 
> I'm glad if receiving any of your reply.
> 
> 
> [1] https://lore.kernel.org/lkml/20230306035814.78455-1-o-takashi@sakamocchi.jp/
> [2] https://git.kernel.org/pub/scm/utils/ieee1394/


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
