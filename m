Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C7DAD7B76FC
	for <lists+linux1394-devel@lfdr.de>; Wed,  4 Oct 2023 06:04:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1qnt7I-0001ai-4W;
	Wed, 04 Oct 2023 04:04:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1qnt7E-0001aY-W2
 for linux1394-devel@lists.sourceforge.net;
 Wed, 04 Oct 2023 04:04:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SWFPw/0TEHgJsNbMuYRSrl82EkyqBVdnsb+uJkEkozM=; b=VobuTMayUfELKNmRXRjlH4pCZZ
 oHMxju0D3mgTHjgnPFsQmW58J32IXHPnha7KGMNrKF93oBLcYaEYGolqzeYrMX2HgRvTJCF6+sO0k
 qJwxdHiIPwPq4/MH50c0Y9G3myF4v0UZVlDeGLvS0AM8QxOksdlE/TpEPYApF5R2yU8Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SWFPw/0TEHgJsNbMuYRSrl82EkyqBVdnsb+uJkEkozM=; b=l7h77Vl8+LNjoCU5dSPG0MzWN/
 zMYbUzRSmEU0V0s3h/YQ7ueI0HNS4ptWdsvXQaiM/84CLijzhWk8iU7HBkhloDydhzXtXfE7cvOOH
 ZKCsbnyxb1EQvMVuJIr4pKf9lysl3J9weKBMoAQTgtuhWR3lTfeLHubpQVn++2ZjhGFk=;
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qnt7C-0007is-Vt for linux1394-devel@lists.sourceforge.net;
 Wed, 04 Oct 2023 04:04:05 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id 838083200BD9;
 Wed,  4 Oct 2023 00:03:55 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Wed, 04 Oct 2023 00:03:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm2; t=1696392235; x=
 1696478635; bh=SWFPw/0TEHgJsNbMuYRSrl82EkyqBVdnsb+uJkEkozM=; b=E
 ictTuO+6v9WQ/or0362c5W74YzAgReFIvbZ8pAJ6+M6j8PJD/il4KXzIum3NYEby
 laTklbiYwQ/bTb7NMOpPWWPio1NLE0TdjveqYD/M7ELJDr07z6KVhIJ3URCHGj7/
 L4byZ+HpLQ+OyKOSLyfd7BuJK4V4cmB4KleblbmgEYcuW6vQcqZRRj47pim2NomS
 qVatxrebR6o6Ndc/RHh7ZyrcnKB0kOOm5vNjju81ODSTnEa+LSs5T7+I7LxPAaPx
 Y8sh2WxU8X0LHbpUkNA1lwOE/qjxXVWtGFvGZmOUJf1cKiH+42YJ/Mb8sxfH/688
 IkY439oBsuIDeLJWvSoiw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; t=1696392235; x=1696478635; bh=SWFPw/0TEHgJs
 NbMuYRSrl82EkyqBVdnsb+uJkEkozM=; b=TYmlVbbEeehLmcgEDjVjI7QR+rA/G
 mCEE+cGmWgwxbeFG2VLE6PjCR93LFM0Us44dKm/U6ywjwyKd7qB+Z7g47H/zIo06
 OMSseeZ1CBDK13XgwNJX5tzoXltstCZMj76GT8NUitWbC8WgeqQ8Et9VUTAsavku
 qKAp0Qtw3aDrP9ZtTYzZ0M/DHMWN9HmDm0cle9q9M3O6YC0xe/2Vq7uvTN73Mwr3
 dKkwWBm/isRZ8RopgBXsNc091H3p7Stndsz/Yz8B7Ve2V8s8NyC3iUDxfSjioyhr
 6pmJDt0vQq6GIYWTu0grcD1CQuqn6pd2RD8ium0TjRrKnGqYyE/443wNA==
X-ME-Sender: <xms:KuQcZXas0h1PIRSqLnGrtFLb6JF0aRz-LqbdG5J6zfzUrkqQebCsfw>
 <xme:KuQcZWaOY5JOq49l1vrDT6wSuXzoyBErmm_H_0zv-dW_7BCHzaBMfrhNFihnb0og_
 pldBH25m0sz6nnTvBY>
X-ME-Received: <xmr:KuQcZZ-du3fgP35bSQ2cvzr6Oo5uSVzi3G2-XP3zpJemdwiyOFCEKkunun6dQCVnBbDcmqvEZ8xgJM-y5Y4JLWdrJVoIMHI9HA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrgedtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 epfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgrshhhihcu
 ufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjpheqne
 cuggftrfgrthhtvghrnhepveeilefhudekffehkeffudduvedvfeduleelfeegieeljeeh
 jeeuvdeghfetvedvnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvg
 hrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehs
 rghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:KuQcZdpi9v9lmmiZzjLRSaYK4oo46Dom6vZaEaIc3B0uXw3LmkKBqg>
 <xmx:KuQcZSq388GqD3KrmvZK6Pr6C9YsAKG-tX45GnfK4ZZAuk3alVJ-1A>
 <xmx:KuQcZTRV81LIjQiVfpY6M8S4eAZwe1-UP3Ivo9f2R3kQY6i7b45iQQ>
 <xmx:K-QcZZ2_CquhgATFDOsWxnhXu2mhP3gvH74Bo2PZNkFzMvDXYBk-mw>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 4 Oct 2023 00:03:53 -0400 (EDT)
Date: Wed, 4 Oct 2023 13:03:49 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Kai Bosch <kellerassel@gmail.com>
Subject: Re: [PATCH] Firewire: IP over IEEE 1394: replaced implicit mentions
 of unsigned int
Message-ID: <20231004040349.GA53158@workstation.local>
Mail-Followup-To: Kai Bosch <kellerassel@gmail.com>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Kai Bosch <kbosch@protonmail.com>
References: <20231003211650.349521-1-kbosch@protonmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231003211650.349521-1-kbosch@protonmail.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Thanks for your sending the patch. On Tue, Oct 03, 2023
 at 09:16:50PM +0000, Kai Bosch wrote: > --- > drivers/firewire/net.c | 48
 +++++++++++++++++++++ > 1 file changed, 24 insertions(+), 24 deletions(-)
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.21 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [64.147.123.21 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qnt7C-0007is-Vt
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
Cc: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Kai Bosch <kbosch@protonmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

Thanks for your sending the patch.

On Tue, Oct 03, 2023 at 09:16:50PM +0000, Kai Bosch wrote:
> ---
>  drivers/firewire/net.c | 48 +++++++++++++++++++++---------------------
>  1 file changed, 24 insertions(+), 24 deletions(-)
 
As long as I know, the coding style of Linux kernel[1] does not forbidden
brief expression of 'unsigned int' (= just 'unsigned'). Furthermore,
in C language specification, 'unsigned' and 'unsigned int' are the
same[2]. I have no functional change over the patch.

If the intension of patch is in the point of human readability, please
note it in the commit comment. It is the most important for the kind of
change.

I'm waiting for your next post.

[1] Linux kernel coding style
https://www.kernel.org/doc/html/v4.10/process/coding-style.html
[2] See '6.7.2 Type specifiers' in ISO/IEC 9899:1999, so called 'C99'.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
