Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 99E2D8859EC
	for <lists+linux1394-devel@lfdr.de>; Thu, 21 Mar 2024 14:25:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rnIQI-0006EU-CD;
	Thu, 21 Mar 2024 13:25:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rnIQF-0006EH-UT
 for linux1394-devel@lists.sourceforge.net;
 Thu, 21 Mar 2024 13:25:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FM/ekE5Io3Dn3mqf5BFQ86JSx+WgTpNVAU55ps3Oaaw=; b=OMZ9u6rlLyPpKxTL7K3oAlIxYN
 fyNG6ryahaXUuSfHnNNdZEBSBG/U4sE5sfFcuMjQvhfWRVTFYMfu/YjkWIpHsrxrrOqBkRNXEMArk
 p1lIpgK+P+5+7p/Tno9QCnQgmFnoDZ99ZYaHqBZAOGbPl/c7I7ATs/DuNGu01wSOSw90=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FM/ekE5Io3Dn3mqf5BFQ86JSx+WgTpNVAU55ps3Oaaw=; b=ZVxcAiFpIOgn2v6EUzXrfCpqJQ
 sqIcKOg89Qp0vDrDOtu1wkvpLmhhVM0839NWZoxWSWtVAZ91Oq95qeuCcPG+D2HI2ZXFUKKSO5Srq
 7HvvhKsTSfkGMba70Ftvd6HozcIVH28/ZilkhHPUEPsgg7fBEJdDw3mK4Pe9SNeifs3U=;
Received: from fout8-smtp.messagingengine.com ([103.168.172.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rnIQC-0001OI-CD for linux1394-devel@lists.sourceforge.net;
 Thu, 21 Mar 2024 13:25:32 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
 by mailfout.nyi.internal (Postfix) with ESMTP id AEA3D1380145;
 Thu, 21 Mar 2024 09:25:22 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute7.internal (MEProxy); Thu, 21 Mar 2024 09:25:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1711027522; x=
 1711113922; bh=FM/ekE5Io3Dn3mqf5BFQ86JSx+WgTpNVAU55ps3Oaaw=; b=A
 J1LL4WkrTHGGRRuuF1b19nf0CmG1HZ6LoQHlAIazSOyySlaC9YTzVBAIDeC3+CLH
 jkY+57QV7JfyoFDZzB9mqGxcz6cpfwRa3EnBi4w5p4y4b/oYusJxPovdGobPUgL8
 LNb65Lwlelenkr67uqqYXL8ZVDE8c4RUlpP/anIoat+H0/O1oXhIFGq9fhT5fkqB
 /oxcbkyk2yrnCm3xJPSk2xC5UNYJiMw25Evnw+agtiUlk9p3PvEsiEr3Ozsg4w2A
 Hv02HN6wCqZlnTd/Sz8Jge2stAGSWaNvW79LZm7Z15gfVSr/T1AE2P/EVZkbgZw3
 dWowOphxEvvDIzIJTES/Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1711027522; x=1711113922; bh=FM/ekE5Io3Dn3mqf5BFQ86JSx+Wg
 TpNVAU55ps3Oaaw=; b=wBT6STPA6NUULLuiubLxlYogt1j0trDR5RA/e/Pq3y8F
 5db8Kf0RPC4OUHU9jXiK6lN41kF7JrR7dApdaGUQ8LWScliPTGHC2fm1Fgpc/fht
 GSojYrctzRTWSD5do/Bm4GHHV0zTgLiYiTB1H2U+wkXix6S0/zHjKXMrjOfM6E8n
 N1m5jVXD8qsvOjmq1Q9oNlNvnFmwQs8SowGXaRpCId9f9A3xwqxlmDnU8SbctFEl
 5IyOWwCrlLPrIfZW56ypRJPKNqgGftN253/3Ul3LeQMPRVy6c9O30tb1JcRx+NB3
 GmLVRXtNFFzcdMYZyylzgEeR+x1tVnQ8qPgR0OgUQA==
X-ME-Sender: <xms:QjX8ZWjZN8onfLLl89haiixGZ7FwKE-7gztpNNCWToQS6cnRsR_XOA>
 <xme:QjX8ZXAd8SqWbTes42rL52NvYrKUnUIQYf5_fi9x_c-wrH8DQyaQVD5-URTz772hL
 jOV1Uz5YoTW9HMPqxo>
X-ME-Received: <xmr:QjX8ZeGAvCOSyaiLjP-og5EWfgMCQ1dHL0TC4MAC8fpZ5f4U42uJn1AkYbdapOzGOD4VXZNMB_YRuR97Pc6GwINbUJjIHDX8N60>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrleeigdehvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvvefukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghkrghs
 hhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjh
 hpqeenucggtffrrghtthgvrhhnpeevieelhfdukeffheekffduudevvdefudelleefgeei
 leejheejuedvgefhteevvdenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluh
 hsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:QjX8ZfRxXMUx7FvFj7vqGM4i7V8_9x0QVAa5cW65Lg-bhRqaxYSBPg>
 <xmx:QjX8ZTyB8fcFdJ78f35DXwFsVt7ZiYgsNsSbC6dELt39_znJVyZvUA>
 <xmx:QjX8Zd6KJjiT1_3eOSM68Idx1ug8w_pvcDhZTZIML9iyS5yaBGqOcQ>
 <xmx:QjX8ZQwmcoTQoDEp78AR-rGDNSXV1BEMazoUHeCAKktT9JkwNPs0Jg>
 <xmx:QjX8ZVvqBUGrh8LIDyypRKFhmMRl1Hbl5NXkIZ2xAmFy2V3WMomDsg>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 21 Mar 2024 09:25:20 -0400 (EDT)
Date: Thu, 21 Mar 2024 22:25:18 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Adam Goldman <adamg@pobox.com>
Subject: Re: [PATCH] firewire: core: use long bus reset on gap count error
Message-ID: <20240321132518.GA755964@workstation.local>
Mail-Followup-To: Adam Goldman <adamg@pobox.com>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
References: <ZdxH-mjmd09jmYZN@iguana.24-8.net>
 <20240228004144.GA72391@workstation.local>
 <ZfqufddlPhxzcDCN@iguana.24-8.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZfqufddlPhxzcDCN@iguana.24-8.net>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Adam, Thanks for the patches to improve the subsystem.
 Inconveniently to you , we are now just at the merge window for v6.9 kernel,
 thus I would not put any changes except for the changes to Linus. I'd like
 you to wait until the next week, sorry. 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1rnIQC-0001OI-CD
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

Hi Adam,

Thanks for the patches to improve the subsystem.

Inconveniently to you , we are now just at the merge window for v6.9
kernel, thus I would not put any changes except for the changes to
Linus. I'd like you to wait until the next week, sorry.

However, in the topic of logging PHY register, I have an idea to utilize
the Linux kernel tracepoints framework[1]. It is tangled to program with
the provided macros, and it is available just with the relevant tools[2],
but it would be helpful in the case, I think.

[1] https://docs.kernel.org/trace/tracepoints.html
[2] https://docs.kernel.org/trace/tracepoint-analysis.html

On Wed, Mar 20, 2024 at 02:38:05AM -0700, Adam Goldman wrote:
> Hi Takashi,
> 
> On Wed, Feb 28, 2024 at 09:41:44AM +0900, Takashi Sakamoto wrote:
> > Additionally, for your investigation, you added the debug print to get the
> > timing of bus reset scheduling. I think it useful for this kind of issue.
> > Would I ask you to write another patch to add it? In my opinion, the case
> > of mixed versions of 1394 PHYs in the same bus has more quirks and the
> > debug print is helpful to investigate it further.
> 
> I'm sorry for my delay in preparing a patch.
> 
> I've submitted a patch to linux1394-devel to log when we schedule or 
> initiate a bus reset. This is enabled with a new parameter to the 
> firewire-core module. It provides logging similar to the debug print I 
> used to investigate the reset loop.
> 
> Also, there is already logging for bus reset interrupts in 
> firewire-ohci. This logs all bus resets and does not indicate whether we 
> initiated the reset or some other node on the bus initiated it. However, 
> the logging in firewire-ohci always froze my computer when I enabled it. 
> I've submitted a separate patch to fix the firewire-ohci logging.
> 
> I believe both forms of logging can be useful. firewire-ohci logs all 
> bus resets, but it doesn't tell where the resets came from. firewire-core 
> only logs bus resets we initiate.
> 
> I also considered adding an option to firewire-ohci to log PHY register 
> access. This would include writes to IBR and ISBR, so it would log when 
> we initiate resets. However, this logging would be more complicated to 
> add, so I didn't do it.
> 
> -- Adam


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
