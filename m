Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 786DF9535BA
	for <lists+linux1394-devel@lfdr.de>; Thu, 15 Aug 2024 16:41:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sebf2-0004M6-Ci;
	Thu, 15 Aug 2024 14:41:08 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sebf0-0004Ls-N6
 for linux1394-devel@lists.sourceforge.net;
 Thu, 15 Aug 2024 14:41:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FFQ2p3371KOY8jkyNU3vlSfsWExltDzk/PmGj1mRgnk=; b=XNTzYVc9cASa97zXSqq0xRobsj
 NHJNcPD1whBwripKMKZjWhNjkZLL6+Xp0w+bdBnn+5VPIAijAEN/0831K4RUlneru/GrMrXPPNbWd
 Oq0DQuNKNFoWCC46MKaTwCkkkxN1xO8Io9dZQluU5Mp0cGjzR+y777D4x4CDKZkFzRu8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FFQ2p3371KOY8jkyNU3vlSfsWExltDzk/PmGj1mRgnk=; b=b1o/F4RJa20oxJT6XOBkTo8E9+
 EU4xfhLtJ1tQdq7sRgD/jQB4TS4wRIJ9/NXvg20AtxTvUbDgR13TiYpW/SKSUIQaCYLTvMOj5SpoK
 K7XNu3KYL9JSwrXLkf1bXW+byTJ8iw/r/vgELIFdKIX1J/sxIiUkiLbd+gEIZw/LUtLk=;
Received: from fhigh6-smtp.messagingengine.com ([103.168.172.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sebez-00064Y-7A for linux1394-devel@lists.sourceforge.net;
 Thu, 15 Aug 2024 14:41:06 +0000
Received: from phl-compute-08.internal (phl-compute-08.nyi.internal
 [10.202.2.48])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 92A221151B6B;
 Thu, 15 Aug 2024 10:40:59 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-08.internal (MEProxy); Thu, 15 Aug 2024 10:40:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1723732859; x=
 1723819259; bh=FFQ2p3371KOY8jkyNU3vlSfsWExltDzk/PmGj1mRgnk=; b=w
 hLmXyqIVd5stUOlxw5n9DM5uSY/lbw1WPd7g71WpcoP23mB1khgOr6nhvtCXs52s
 yq9ZyTfT4mkwIpFTyosQ3/l2hKg0YLfW5mNtLbb6CDcnHHgOVGPAUpRwtD7Ui5cL
 fOQa9L7SDb7UtBBBt+n++RTt5hQ4C3bKgfaMJl8sXVVHsI6Z2C+8u8T445esfEwh
 A89T64khaS/jlgATDeQERAqAVDWvL6HsroE5UTPq03RW+AIH0uegTFpDPP6V8Q2h
 kLVwK+enI1uzWNjZjdEEix+RtbUUPy0tLCDfGKi1LmDTl3RjjeyFdT6iqBp0WUM/
 8v2V4z+kGXvn000bfib7A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1723732859; x=1723819259; bh=FFQ2p3371KOY8jkyNU3vlSfsWExl
 tDzk/PmGj1mRgnk=; b=YSCwy+xn5Kp8VkcBH3Wnhul2KuwKIY/fKiQ7wlNSPVaV
 cAqRObnMSAkWKXT4407uYBEiWnfZBSg3hSOnDG6eFV9ubPS0WgAKZKbmnlByrsoR
 I3KguXg0b5dGcWHLELU09ev/vXPUtSTsEAxkQxUteyNiRRLvYGAcoY4qZRwQfmnZ
 RdtKIqfX99B8KI6U05pKSLGMmhknk8/xyxpl5aPlRP/zHhATovJvoipL5dI2JLaX
 eMTHIh/cJ1a5OHiJvB6kbAqEc15pLD0uG34XaDTb0juWRWLd7z4BFg+SY0ARg2H1
 Mc4qRs95eB20QmhnXj+hhvLWxhP+iHvbMZyMu5vN4A==
X-ME-Sender: <xms:exO-Zncnh__DgB74SOqZoLdvUdLilJWwTJVMpnzgX1KZqLeW8ZYAGQ>
 <xme:exO-ZtPTqhW7OHO3tA2JcagD5ubBMrjaloaahZ4C46QDJBmhq5AIwyioKORe4OYwm
 OSWBEd0YuEvvoFgV8w>
X-ME-Received: <xmr:exO-Zggb8OsMlswXnbEvERrbrTytErUKO87Y-a13s056J895tnZDvZ69-m8_FJhf8FXX8q1rV00LJUbSO_Hxc5Q5YtJ7Zqo8d-I>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddruddtiedgjeelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvden
 ucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhephefhhfettefgkedvieeu
 ffevveeufedtlefhjeeiieetvdelfedtgfefuedukeeunecuvehluhhsthgvrhfuihiivg
 eptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhho
 tggthhhirdhjphdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhhtpdhrtg
 hpthhtohepuggrnhdrtggrrhhpvghnthgvrheslhhinhgrrhhordhorhhgpdhrtghpthht
 oheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtggvfhhorhhgvg
 drnhgvth
X-ME-Proxy: <xmx:exO-Zo8eyE0XNLaZ3vHvOGABtn-BTRZvYkrwRGlNbaOtcRxkXGB2jg>
 <xmx:exO-ZjtBwVP9VcOwmkBJbo7QpZ-bZq1fdijI3553wTwbW2boaCw7cA>
 <xmx:exO-ZnFkLheGC64Xc-jsCAuydJ_z1CHmX8SIEkcdM0iS_YS5vP87bQ>
 <xmx:exO-ZqPbx5Ue0YK675pFQCm4kWu4wO4JqQOKUEfdmE-sgO6jMb0Ivg>
 <xmx:exO-Zs4av6L9tONJn17-VdHDwmVW46I8tpI-nTVPlPm3Wj40cGQ3pVux>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 15 Aug 2024 10:40:58 -0400 (EDT)
Date: Thu, 15 Aug 2024 23:40:54 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Dan Carpenter <dan.carpenter@linaro.org>
Subject: Re: [bug report] firewire: ohci: use guard macro to serialize
 accesses to phy registers
Message-ID: <20240815144054.GA118524@workstation.local>
Mail-Followup-To: Dan Carpenter <dan.carpenter@linaro.org>,
 linux1394-devel@lists.sourceforge.net
References: <bc125b2f-d038-4a14-bc11-93f40f024c95@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bc125b2f-d038-4a14-bc11-93f40f024c95@stanley.mountain>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Thu, Aug 15, 2024 at 10:08:27AM +0300, Dan Carpenter
 wrote: > Hello Takashi Sakamoto, > > Commit 404957c1e207 ("firewire: ohci:
 use guard macro to serialize > accesses to phy registers") from Aug 5 [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.157 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.157 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.157 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sebez-00064Y-7A
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

On Thu, Aug 15, 2024 at 10:08:27AM +0300, Dan Carpenter wrote:
> Hello Takashi Sakamoto,
> 
> Commit 404957c1e207 ("firewire: ohci: use guard macro to serialize
> accesses to phy registers") from Aug 5, 2024 (linux-next), leads to
> the following Smatch static checker warning:
> 
> 	drivers/firewire/ohci.c:1927 initiated_reset()
> 	warn: potential negative cast to bool 'reg'
> 
> drivers/firewire/ohci.c
>     1923 static bool initiated_reset(struct fw_ohci *ohci)
>     1924 {
>     1925         int reg;
>     1926 
> --> 1927         guard(mutex)(&ohci->phy_reg_mutex);
> 
> I'm not sure why Smatch is blaming this line...
> 
>     1928 
>     1929         // Select page 7
>     1930         reg = write_phy_reg(ohci, 7, 0xe0);
>     1931         if (reg < 0)
>     1932                 return reg;
> 
> This is a bool function.  I think these should be return false, instead of
> return negative/true.
> 
>     1933 
>     1934         reg = read_phy_reg(ohci, 8);
>     1935         if (reg < 0)
>     1936                 return reg;
>                          ^^^^^^^^^^
> 
>     1937 
>     1938         // set PMODE bit
>     1939         reg |= 0x40;
>     1940         reg = write_phy_reg(ohci, 8, reg);
>     1941         if (reg < 0)
>     1942                 return reg;
>                          ^^^^^^^^^^
> 
>     1943 
>     1944         // read register 12
>     1945         reg = read_phy_reg(ohci, 12);
>     1946         if (reg < 0)
>     1947                 return reg;
>                          ^^^^^^^^^^
> 
>     1948 
>     1949         // bit 3 indicates "initiated reset"
>     1950         return !!((reg & 0x08) == 0x08);
>     1951 }

Indeed. It is my mistake, and I'll fix it soon.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
