Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJKsNErUDmr2CQYAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Thu, 21 May 2026 11:45:46 +0200
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0B95A2976
	for <lists+linux1394-devel@lfdr.de>; Thu, 21 May 2026 11:45:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p34zFHpl3RMPiXhk6lDYrDdPiORMBmV7P0J5Su4Rnwo=; b=TIIoZdOLpiCzWfjnzEHS0BnIcW
	Ab4zZHWwrPLShDiTxDMe+dlKDntvkFPiDbcS9yV8jPArsttQlstI6t7AhQbSnDOG0qyC/mNukFgDC
	2XU8qbDfvcPo1rgQKebxoLHYquMBFnyKj0s4fNaZ+46uafa5jIgKuERc/4voeWRpANAk=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1wPzy7-0002DU-AE;
	Thu, 21 May 2026 09:45:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1wPzy5-0002DK-4X
 for linux1394-devel@lists.sourceforge.net;
 Thu, 21 May 2026 09:45:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8PRsBjQeQIqQm0g6c9RCZX8b0G5O5fB94PzKzWNFqsU=; b=OXwoe1CjfLOFswe1+X/m3Ej2Ep
 a/IPMz/BdkwDxLAagMUFWF2F4dKJHOKdCBp8oQEYnRwjxhMBleuVbZfSObgQj2Y4ew6SDXCDnsx8e
 MUz1jmYKSJ7LLQfHipTDQsvutzfJwP3ImcSxpw9kXf/76Ylscdm7Ltu753seD+HubNhQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8PRsBjQeQIqQm0g6c9RCZX8b0G5O5fB94PzKzWNFqsU=; b=Dh0X1EYF4892/KnRt0dYX9s2pO
 BS8nODyR4/0wxLpDn5sgPkwr2ZXusSvxdcl3aGlpkapeKUu4lYdZ6+o63kjL75ypMcD2jVLfk9btO
 IfNGeqNqRGRSoKwqaUULnXUjdE/uwzG0mHrk2C/FEU665xgIk6EBcMPuSOEG+szq6LJY=;
Received: from fout-b1-smtp.messagingengine.com ([202.12.124.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wPzy1-00042U-5E for linux1394-devel@lists.sourceforge.net;
 Thu, 21 May 2026 09:45:29 +0000
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
 by mailfout.stl.internal (Postfix) with ESMTP id EE8701D000E1;
 Thu, 21 May 2026 05:45:14 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
 by phl-compute-04.internal (MEProxy); Thu, 21 May 2026 05:45:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1779356714; x=
 1779443114; bh=8PRsBjQeQIqQm0g6c9RCZX8b0G5O5fB94PzKzWNFqsU=; b=o
 cNdOPTE6SljOchN/XC46jtaI8bEjeCwTEBFB78uwqvOqKxwa8v7GF/t+t1AijgIQ
 PDkNtbdDF+DMNULaRHLlqzZj9XXOKPLr5nzPG4/NOwk2Dub0dc/Rboaed8DDLaHx
 xeENaacJFM6veidTqrAbhfrJnPsdjRqF6hYputwq3cjFyRZ7rqRuL0WTdf5cxsn/
 sujqjAitBxjon5MxEbx7U7zT/AeVSKw/dXGg5mp6dkQiBqEgOQiUV8d6sezGQhJv
 g9XcBhdtm3TPe/z3I3ZuE/Nrfk/6Eg7ODwT8+w6nBdlaG+zf/qOGDT9e5ddTWuDN
 HC1hwe+RPpj9WhlUqWfGA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1779356714; x=1779443114; bh=8PRsBjQeQIqQm0g6c9RCZX8b0G5O5fB94Pz
 KzWNFqsU=; b=VrT/OKA3dz+8OZNip+9Sb6XM1pruQoGe37VAMpKCuBdGjFUetsg
 eWeaIV+pvYnPpvWqDbZpRduqjMjZI83G5LYg1HnmvRva8wivEwwJ8w6+ULwz4XwC
 cFLs5fda29mkYI1xReLHVbiM56pCvsAHTvi3fd15aMjr7otzsgHVXjLkAMNB+Tze
 Md08or0sYJ0ywdCJQRpjvheqqqXyd5ItQdKvgyetjYAiAgnn9h6A24t6hun7CUCP
 5V4p8U1G9yy8NosUlSoEvV6RXaYsIJjTtWwodUMdsD5TuppdLNaOmo/41qjwr2cp
 4jVkOKR4sbAHFeEdBfsaih3fLiLrEgdPJuA==
X-ME-Sender: <xms:KtQOaglcd31LNQErbxp2je5LFKVE1ayYap4vEFIBpQ220y-49U1URw>
 <xme:KtQOatyOqHZGhQcX0PwCH39TAkNK_X5dAFvsun-xQdRi-lG5Xm-tGTUp-bo0hO5-l
 MM53PV9QAMXyirQJ_sp11rrwtXXe6D05XmouM4SthNu_UrJpLGP18Cv>
X-ME-Received: <xmr:KtQOamP5tFrKq2SJ-wi6sKFBWP4TXkBR1TJ2WH7f4A7567_z8nbgWLb6x0at2DJenKwMQVf6Zj2SDCWEKsU7ui5G-aFQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgddugeejudekucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttdertd
 dttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeevieelhfduke
 ffheekffduudevvdefudelleefgeeileejheejuedvgefhteevvdenucffohhmrghinhep
 khgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
 hilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjphdpnhgspghr
 tghpthhtohepvddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheplhhinhhugidufe
 elgedquggvvhgvlheslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvthdprhgtphht
 thhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:KtQOapQM-ZX43EjUtAS-aE1Xr5ux6fy762wR1zB3VPDIcoULnne_Hw>
 <xmx:KtQOasYFXGgese4r9y3ayjZx6W6o5nK7aCyCiWcZtYt7nMCEAr3AqA>
 <xmx:KtQOau1QuNSsLv9iyg0E7D7Gq2EXhD7oQk_WZC9w3YW8B1Klzg8KHg>
 <xmx:KtQOakVrKYAFDZ3T8p9Sti8ujZSD5iug--n9_Ijp44T-FSOltoU60A>
 <xmx:KtQOaq6NDfeWuqnCtarWMTWodaGhXjsSzOTd-QPdz4wdHEd9fZXYpkF1>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 21 May 2026 05:45:13 -0400 (EDT)
Date: Thu, 21 May 2026 18:45:11 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 0/3] firewire: core: more code refactoring for cdev layer
Message-ID: <20260521094511.GA638942@sakamocchi.jp>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20260520130840.629934-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260520130840.629934-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, May 20, 2026 at 10:08:37PM +0900, Takashi Sakamoto
 wrote: > Hi, > > Some paths could still be refactored to remove redundant
 paths after > the previous cdev layer refactoring patchset[1]. > > [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1wPzy1-00042U-5E
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
X-Spamd-Result: default: False [-1.01 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[sakamocchi.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	DKIM_MIXED(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,sakamocchi.jp:s=fm3,messagingengine.com:s=fm3];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,sakamocchi.jp:-,messagingengine.com:-];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux1394-devel];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: CB0B95A2976
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, May 20, 2026 at 10:08:37PM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> Some paths could still be refactored to remove redundant paths after
> the previous cdev layer refactoring patchset[1].
> 
> 
> [1] https://lore.kernel.org/lkml/20260501135823.241940-1-o-takashi@sakamocchi.jp/
> 
> 
> Takashi Sakamoto (3):
>   firewire: core: minor code refactoring for case-dependent parameters
>     of iso resources management
>   firewire: core: rename member name for channel mask of isoc resource
>   firewire: core: cancel using delayed work for iso_resource_once
>     management
> 
>  drivers/firewire/core-cdev.c | 29 +++++++++++++----------------
>  1 file changed, 13 insertions(+), 16 deletions(-)

Applied for for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
