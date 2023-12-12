Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4F880E37C
	for <lists+linux1394-devel@lfdr.de>; Tue, 12 Dec 2023 05:56:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rCuoy-0006Kb-If;
	Tue, 12 Dec 2023 04:56:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rCuoy-0006KT-0x
 for linux1394-devel@lists.sourceforge.net;
 Tue, 12 Dec 2023 04:56:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:To:From:Date:References:
 In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aY1DcEBpej+q64DahK4aKVtgFtxVuoxpvV17sGjHIKU=; b=gM5wLdlWj/Gpf+ojf+lqJB4v6+
 api/6b9tUbU1Ubhd6cFvrqmfNrEwZy2zWU0HYw/4goYIKXreyvL/4aVLdn1SRtemsMyXC4m/jXueS
 SD1UXvZS2jIMAH3QpZXk/d2iZVLGFDPpwtUcdwhdyOt3cVX5Mr8a4InTdRNa/gtjDaag=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:To:From:Date:References:In-Reply-To:Message-Id:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aY1DcEBpej+q64DahK4aKVtgFtxVuoxpvV17sGjHIKU=; b=LOuMId3gZkDakwgXEffl4FDBK/
 GUkF1E7MuXOOu8vne6EQ0ELXXg3hAusOkY1vAO4qYflouNezAThN55OTJEXwZgsmXykjzVW7NH4zh
 qpeufmsB5YUXUpsWqAwhAub4qkicyXX4f/SWqUV9wmYNtTg3vsztajbIGpzT+xm+mJ00=;
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rCuom-0004zt-Os for linux1394-devel@lists.sourceforge.net;
 Tue, 12 Dec 2023 04:56:38 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id D32B83200D33;
 Mon, 11 Dec 2023 23:56:07 -0500 (EST)
Received: from imap44 ([10.202.2.94])
 by compute3.internal (MEProxy); Mon, 11 Dec 2023 23:56:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm1; t=1702356967; x=1702443367; bh=aY1DcEBpej
 +q64DahK4aKVtgFtxVuoxpvV17sGjHIKU=; b=Ezd8RBPbz7o586xPvf5sEPZ10N
 ancqmmq1v9fPu2azda0SASdfETae8VUr2v3nB86RXhFGhBwtyYKxqrbBQGhL0fno
 UoJcsoMqCPiXkgkwfPNGNJPN7IbR3ALsu1qPtpp5fPBwqF70PxsaQ91fl0PxTShG
 AjMx5+qxIkz1AQSqhC2K141I2H1WxsWj5apcxkK8p8ygnP0MOvUL4bpNzJWdPxxl
 Sc7+vNXHtwXD1Dt5HpZhOQX5LtWBt6t80DQiP9glOe/wTxeTtFHbiGDgH9NeKd2h
 MFEon3W46qfddpZ0Bzn5Eh+hYm53TjIoc2RzHhFYU0NLwuM/32BUqa4tTA8Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1702356967; x=1702443367; bh=aY1DcEBpej+q64DahK4aKVtgFtxV
 uoxpvV17sGjHIKU=; b=r9sE5Wf3YVbVk1kupbvEXmOcMdSPDBkXPNEytERaXfA7
 njLykmYPH2iaVm6DcIy0OQt3AGNc+g21PLrpwy7JzBmRozFKiCZA1UyqmnLBNQLP
 y99L0UyMTLGuLkq+cOBY15VFuDFClkphKP9par/wyyvNDd02xFoOOBqzyThXPoSk
 barP9ymNb2hT6dvlwPM1qQtUcOqk471bbxMASD4X3OgkmrUKAdKZM1hWzbq9dlss
 u/vzyXSDuJLKm+XWBFLYdfxVrdcgXJO9cD+Z/278ZW6+19ZJvw0PD6VABR5yffgD
 KJfVfJK+ZkiR3h3csNRBihz2Z+lOejT9V1CtLeCLDA==
X-ME-Sender: <xms:5-d3ZTJoCxllLtNF21KPS9zOyrHoNKD8u1Y3neLtIisCZqPp8E-wEw>
 <xme:5-d3ZXJlhpuwm2kiG-atP-e4NNeSCk_CDNv-i-D-m8PrPMraE0xdEPO0so0kGhPHD
 UMeKllEsVRjeqiMMXQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudelfedgjeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfgjfhffhffvufgtsehttd
 ertderredtnecuhfhrohhmpedfvfgrkhgrshhhihcuufgrkhgrmhhothhofdcuoehoqdht
 rghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeegff
 fggfdvkedvhfdvleeugeeuleeuuddvuefgveefheeluefhuedvtefhleffveenucffohhm
 rghinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrg
 hmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:5-d3Zbv11U-qJhjBzURdOJVSWWGq-re_SZbcVAfhhHXqAhIHwdzVDA>
 <xmx:5-d3ZcYOJzDJPNataFzUyfT5oTa1gtspMUPhAsPz3vd5pszRZNVYgg>
 <xmx:5-d3ZabysibzQLZN3ACIN-rs9catHEc6EqTS6G7RyiIkKfVgphUyrQ>
 <xmx:5-d3ZY0Uk2wI-9TXtTzkVJlImXgNTqlrhPQMobg4nMalI3MBYSmwAw>
Feedback-ID: ie8e14432:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id F0A8636A0077; Mon, 11 Dec 2023 23:56:06 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-1283-g327e3ec917-fm-20231207.002-g327e3ec9
MIME-Version: 1.0
Message-Id: <eeecde8a-5eba-49ef-b4a3-34180c365e06@app.fastmail.com>
In-Reply-To: <20231212001340.t3eo27hjbwj742q3@23.gs>
References: <20231212001340.t3eo27hjbwj742q3@23.gs>
Date: Tue, 12 Dec 2023 13:55:26 +0900
From: "Takashi Sakamoto" <o-takashi@sakamocchi.jp>
To: "Tobias Gruetzmacher" <tobias-lists@23.gs>,
 linux1394-devel@lists.sourceforge.net
Subject: Re: Hard crash when loading firewire-ohci
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Thanks for your report. I've already realized the issue, 
 and been investigating it with AMD developers[1]. You can see the detail
 in the message, but as long as I know the issue appears in the followi [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.19 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [64.147.123.19 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rCuom-0004zt-Os
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

Thanks for your report. I've already realized the issue, and been investigating it
with AMD developers[1]. You can see the detail in the message, but as long as
I know the issue appears in the following combination of hardware.

* any type of AMD Ryzen machine
* PCI(e) extension card with
    * Asmedia ASM1083/1085
    * VIA VT6306/6307/6308

I'm sorry for your inconvenience, and appreciate your patience.

[1] https://lore.kernel.org/lkml/20231107121756.GA168964@workstation.local/


Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
