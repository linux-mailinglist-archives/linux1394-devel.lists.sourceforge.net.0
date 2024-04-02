Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C89F8956C2
	for <lists+linux1394-devel@lfdr.de>; Tue,  2 Apr 2024 16:33:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rrfCH-0006VP-RL;
	Tue, 02 Apr 2024 14:33:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rrfCG-0006VA-Qc
 for linux1394-devel@lists.sourceforge.net;
 Tue, 02 Apr 2024 14:33:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:To:From:Date:References:
 In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=R7MrZr6+haq9txW+uvT45D7qianey0qksQR6eWh9E/8=; b=ZY+Y5Tnw/PpEJCo9te15MRMTGx
 3z87hMeWqMFftT3dpv9PxwdBk+2u0OLur0ubPt7vA6BHzu1EU9zmRpROjqZKigPBJa8GOV0sjYu4j
 PU+Iz3rOFy6unXqy7qXDX/XvP/quZjxJLAXwOrvXNpgLQXDDu76sP5JjMNXyImHBaPTE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:To:From:Date:References:In-Reply-To:Message-Id:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=R7MrZr6+haq9txW+uvT45D7qianey0qksQR6eWh9E/8=; b=CazXkMkN+WEVyWvA95IH83jJwg
 z2G9w6zDrV5aQv2MJ1tsaeYC1oHuqPVYFNQOpS8k5LBNfTUxHiB8mMulTlhD3naiEFYpSN4l5deUN
 uFOe4FOhIWX0PZqs/Fz25OtL4OVpTV2j8MjPdEybIrX6EzM26KuP9cTXREz3bEqwo5dY=;
Received: from wfhigh3-smtp.messagingengine.com ([64.147.123.154])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rrfCC-0006zu-OG for linux1394-devel@lists.sourceforge.net;
 Tue, 02 Apr 2024 14:33:08 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailfhigh.west.internal (Postfix) with ESMTP id 2728E18000CA;
 Tue,  2 Apr 2024 10:32:59 -0400 (EDT)
Received: from imap44 ([10.202.2.94])
 by compute3.internal (MEProxy); Tue, 02 Apr 2024 10:32:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm2; t=1712068378; x=1712154778; bh=R7MrZr6+ha
 q9txW+uvT45D7qianey0qksQR6eWh9E/8=; b=VAHeMmS1tccWgjTd3Fl35ibMTH
 Gy40sZjGlierzwaC0qZ83igXSsLjY7Yca5OpwxNxFlyKT+JerrR9D5qd8yZW3PY2
 pAbcwjBs8g8OcQ09A9n3+1OvEPNrS7/t/s/l4IgZZTiQpptKdBj6pqzpTrdmtaPa
 5HGTAjaAGYpwqFSMSNXgY6NCtL3/3TI6UaGaOkkr2c0NBF3ANmlXJCoIJIFZ1q9+
 4uV7yLc1ch8WrTNzUJGks9JduJe7PwnRZDc4Kc+3p7sKq3AVqHlc803sa8SXzizu
 UA+ZpOE9KlF8kuVhLiTjJfnhwPgwnnR2KT04utO1wGDD1OGPY+UEoZWPt7jA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1712068378; x=1712154778; bh=R7MrZr6+haq9txW+uvT45D7qiane
 y0qksQR6eWh9E/8=; b=UR+fEVKW8QqOO0wXXd5458ZbZhxXZAxf1XXPeH6ZZCle
 HhMk+MzWfL9tvSumEmP4Okd0AGdO32KlUBGQzpN8zEUw9UdJppaNAZFymcgVBvkZ
 isXrISoQAXowrYFgwfUcWypfhMroU9F8QFv3Cl4OPJMkEHlo5pyCeurLk0F5vcc8
 w5ypWWNhjsQag4K4Gv6aoQgbsiuPLEyP4i89glpIz4uMkYfrbZc0wAFCuoZxRLvQ
 LG73064436m25mw7fYcLt6eov9PTB9mb+ORbT58XkmVDsC7x60aR8kSNkTkl7km3
 yKsSAZqmFr/9Mey4vFsbWi9ND9yapk4zGqO9KZ4gmw==
X-ME-Sender: <xms:GhcMZvte1-b2DLUHVZQ_Zn1w7YGu3E_hk6NOuvqS0ZgPa1ImZ0Z0jA>
 <xme:GhcMZgcPY0rC646rNoPHHgEUBkyjk1JrGTZOml87EDJptoelojc6tqhrN80eoRBGa
 ZH26SeqXQkBTMWzzvk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudefvddgjeekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdfvrghk
 rghshhhiucfurghkrghmohhtohdfuceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthh
 hirdhjpheqnecuggftrfgrthhtvghrnhepkeekgfdtiefggfehfeeludevfedvveegheff
 teejgffhjeehffduudeiveevvdeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrg
 hmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:GhcMZiwIgo99S6U-3AAlUxwyNeKKz2_UhDzsXliw9D9nz0Xvp2OFHQ>
 <xmx:GhcMZuNuKOMpy-2RImmHHYijFRuRqeww1YS0NbysDtG-7pE_5ifEPQ>
 <xmx:GhcMZv_sXlsgx8qEw5ccgUG0I3pYx3Jn21CwCvmWr55NIl4M7oeeww>
 <xmx:GhcMZuWeUk7e6K5p4QAsRfbNLkXPDikss7hJI0bgu8lBkfjKXVVv7w>
 <xmx:GhcMZhL7FBuoG8jVjwXaQFvKYH4wpzpa8ufYTa8CCn6pWOU-31_-WaFp>
Feedback-ID: ie8e14432:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 3A2E436A0076; Tue,  2 Apr 2024 10:32:58 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-333-gbfea15422e-fm-20240327.001-gbfea1542
MIME-Version: 1.0
Message-Id: <b260bb9c-edf8-4bfd-8a3f-2257f31bc9ee@app.fastmail.com>
In-Reply-To: <CAFK=-gY++P_fUyEz36CE8U7qER2_ebJMTkb6-d4Ts6XpcHBzaQ@mail.gmail.com>
References: <CAFK=-gY++P_fUyEz36CE8U7qER2_ebJMTkb6-d4Ts6XpcHBzaQ@mail.gmail.com>
Date: Tue, 02 Apr 2024 23:32:35 +0900
From: "Takashi Sakamoto" <o-takashi@sakamocchi.jp>
To: "Thanassis Avgerinos" <thanassis.avgerinos@gmail.com>,
 linux1394-devel@lists.sourceforge.net
Subject: Re: Security issue in linux/drivers/firewire/nosy.c
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Thanassis,
 Thanks for your contacting to me about the issue.
 On Tue, Apr 2, 2024, at 22:56, Thanassis Avgerinos wrote: > Dear Sakamoto-san, 
 > > I apologize for the email - I am sure you are very busy. Thank you for
 > all the work to help maintain firewire in th [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.154 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1rrfCC-0006zu-OG
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

Hi Thanassis,

Thanks for your contacting to me about the issue.

On Tue, Apr 2, 2024, at 22:56, Thanassis Avgerinos wrote:
> Dear Sakamoto-san,
>
> I apologize for the email - I am sure you are very busy. Thank you for 
> all the work to help maintain firewire in the Linux trunk.
>
> I will be brief to not waste your time. I am contacting you to report a 
> possible security issue in firewire/nosy.c:L151 which reads:
>
> ```
> /* FIXME: Check length <= user_length. */
>
> end = buffer->data + buffer->capacity;
> length = buffer->head->length;
>
> if (&buffer->head->data[length] < end) {
> if (copy_to_user(data, buffer->head->data, length))
> return -EFAULT;
> ```
>
> Note that the user-supplied length is not respected at all when reading 
> bytes from the wire which can lead to a number of issues (including 
> security ones such as overflows).
>
> I believe this is potentially serious but also quite fixable. Would you 
> accept a patch? Should I contact the security team instead?
>
> Thank you for your time.

I'm pleased to review your fix for the issue;) I don't mind that you post it just
to me, since any mailing list demands you to subscribe it in advance when
posting, and it is a bit cumbersome just to send patches. Additionally, I
don't mind the patch format as long as it includes enough fractions to fix
the issue. In the case, I'll revise it for the complete patches, alternatively.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
