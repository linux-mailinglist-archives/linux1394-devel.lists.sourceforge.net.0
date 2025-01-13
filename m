Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AAF5A0AD3A
	for <lists+linux1394-devel@lfdr.de>; Mon, 13 Jan 2025 03:01:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1tX9ls-0008Mg-3K;
	Mon, 13 Jan 2025 02:01:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1tX9lq-0008MW-3a
 for linux1394-devel@lists.sourceforge.net;
 Mon, 13 Jan 2025 02:01:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nj5NmPz4q2DNLdNYVNvbcUlqJz+8Zz24YB2RmUbxT8I=; b=WCNGv4zS5D42ZrKY3wTs/ZiJRb
 mzvyCEobSDj7CTbG4S8iU03l3ay1GWiC6+JkbK3alT7XdJ8eRIiENblSEsINdNG2WrJNJT4YbPkM1
 fqEQhm/N55Uor5iDJ3/UAzQPf+gyYxWSV6mGMwoDH5XjZci6gKdVExlmQWoc0lMETg/E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nj5NmPz4q2DNLdNYVNvbcUlqJz+8Zz24YB2RmUbxT8I=; b=Eha4LfTVVhk+Rsr5V0thL9Q39k
 yzsoxO7dQNawIOR0fc5HVhiKVK6YShJu4Qn/FFyKEpFRzqeT9Dbko+jLvJ28xnZH5jWT3QqxUVfNA
 ES4ZzgweB77Fin5h01BqGj6JD00lWi+HFiZ1BRa2yfiTJiSUoWALTPfsaPkCsw0t+Cfc=;
Received: from fout-a7-smtp.messagingengine.com ([103.168.172.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tX9lo-0003Id-Kh for linux1394-devel@lists.sourceforge.net;
 Mon, 13 Jan 2025 02:01:37 +0000
Received: from phl-compute-12.internal (phl-compute-12.phl.internal
 [10.202.2.52])
 by mailfout.phl.internal (Postfix) with ESMTP id 8EBEA138019F;
 Sun, 12 Jan 2025 20:43:03 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-12.internal (MEProxy); Sun, 12 Jan 2025 20:43:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1736732583; x=
 1736818983; bh=nj5NmPz4q2DNLdNYVNvbcUlqJz+8Zz24YB2RmUbxT8I=; b=H
 vCoVSmXPQBf35F176RFDG3rpzB0LqFK2NFmC6IznR1GiMrH4yjCL+/9i+gPmFqOy
 ykRzx/m4unQ6gTobL9HybZVtF5ui/OVgl7uM+aPJq13F1RW4WcOyYS/wKTGhZAqA
 fF5uXVWEy6vVltDgvufolxmcYiVuHjNR5p2mlMwNIjsxuaPgii34Z0sK0qIefqrK
 ev7Sd5x31Q0hFxL6PzRcNAORkcMF/qjYoDTVaKvL3YUzzYqNcxC6Ls5IIX1eEoBd
 8NpP1ruuRPQZOSgli5keHNySC9vPOxpbl/z3rD6XQIdw1q7HZ4A4onu1pMpT0sdx
 12hRlostt2+Ex/ffyfGgg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1736732583; x=1736818983; bh=nj5NmPz4q2DNLdNYVNvbcUlqJz+8Zz24YB2
 RmUbxT8I=; b=iM3eDlgwKxg4O8cKn9LDyvn2SNbaOeoK7BROXJ9+dlzz+egeSVL
 Q5htCnj7y4C+smqU/yoncCpA7cbDQ62Ezw/EoVj/AGj8tCfcb9IaofX5En7GIklw
 kUvGmXsfJ9ymCRliizIeJd0upVIN9IhRgwD0RyIkYbLWbnmNcbyRytr/P/Uke/LL
 2jr8GfIfHtdyWpbRr3+ZKw3kaPRt0dHenL4ae2pwt6YGqFJ+uBHsf3OvsqyEohLP
 wBsbqlY6ei0LABcdjVgX3vgvcnRzlcaVDgpx885MnqeuK5cOBdRG5lHyRX3QSXCd
 D8Q3TBat00JDByK3MFCHqEovllA1soY/n6w==
X-ME-Sender: <xms:pm-EZyFiQqhtE2rtGsfON6fs1bJMxrqFuxtc66qkhMNGMuw3EqX8-Q>
 <xme:pm-EZzWKz6QFbjjnCne-ncXxaq3HJbbnXI8kHlcZ4dXpOz31sAWBwyoh-V26DHUr3
 9BiJE-eFtFTggXfQ3s>
X-ME-Received: <xmr:pm-EZ8LOxfgYQBbgRSafg4V7D1RYWsotdqphRxemDua4b4BM5MhzCGzhnwuMykB1GC3OEVp7Zn5Kb3h5uHfyQE2ywZmT0Sgwqfxr>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrudehfedgfeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvve
 fukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghm
 ohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrg
 htthgvrhhnpeehhffhteetgfekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeu
 udekueenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeef
 pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehhrghntghhuhhntghhrghosehinh
 hsphhurhdrtghomhdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhs
 thhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrh
 hnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:pm-EZ8HAtr_sTm2UljhGiogAQXY24dll25PihSjR0h5fLUEnaPhUTA>
 <xmx:pm-EZ4U8LR7P3EFatp9uYaY7E2VbYMF2Juk2JYX_RSTS4QbGVdJP4w>
 <xmx:pm-EZ_PeJB-apZ7ySo3V4mLs1LO2UV2wKNAzThiQPbkEIGRtybOQtw>
 <xmx:pm-EZ_3Qohd72Ght9j8W4T6NexsFWwkYZ5y-eP2L-NMGoDRiBRjb4Q>
 <xmx:p2-EZ_QPAfYJp3LwCrYua73DqG8UuTZMD9mk1SAd9DpNQIB-qLdC92WN>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 12 Jan 2025 20:43:01 -0500 (EST)
Date: Mon, 13 Jan 2025 10:42:58 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Charles Han <hanchunchao@inspur.com>
Subject: Re: [PATCH] firewire: test: Fix potential null dereference in
 firewire kunit test
Message-ID: <20250113014258.GA68470@workstation.local>
Mail-Followup-To: Charles Han <hanchunchao@inspur.com>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
References: <20250110084237.8877-1-hanchunchao@inspur.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250110084237.8877-1-hanchunchao@inspur.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Fri, Jan 10, 2025 at 04:42:37PM +0800, Charles Han
 wrote: > kunit_kzalloc() may return a NULL pointer, dereferencing it without
 > NULL check may lead to NULL dereference. > Add a NULL check for tes [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.150 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.150 listed in sa-trusted.bondedsender.org]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.150 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1tX9lo-0003Id-Kh
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

On Fri, Jan 10, 2025 at 04:42:37PM +0800, Charles Han wrote:
> kunit_kzalloc() may return a NULL pointer, dereferencing it without
> NULL check may lead to NULL dereference.
> Add a NULL check for test_state.
> 
> Fixes: 1c8506d62624 ("firewire: test: add test of device attributes for simple AV/C device")
> Signed-off-by: Charles Han <hanchunchao@inspur.com>
> ---
>  drivers/firewire/device-attribute-test.c | 2 ++
>  1 file changed, 2 insertions(+)

Applied to for-next branch.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
