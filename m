Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8745FC4D263
	for <lists+linux1394-devel@lfdr.de>; Tue, 11 Nov 2025 11:47:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TVEmItlHi/MQl/ZI5l6emkMnyTr1EXdNbi24VpqNMTM=; b=I4gRT1qH8dkp1wwf3cvNIi7Gg3
	ZIrqvTp8j+Pgoi1E0B9BgWsKC/j9LSi8zKt2s0SF1AsCNH/H01m0GoqIKgqGDnTCkpUTAPw9hgPew
	jxKHS5aQRT4P9MpkL1COqPrLvZ3wP8V2lvBKJOnepWUUpIdrRbKEiZ6rst69C7MZtfA4=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vIltw-0005G6-1t;
	Tue, 11 Nov 2025 10:47:04 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vIltt-0005Fn-OB
 for linux1394-devel@lists.sourceforge.net;
 Tue, 11 Nov 2025 10:47:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h8gdZkv7hNcmc562Myt0D02Ig1uHYyGPZcCltAMC02s=; b=JZsAZ9FFS10hB/BrLsMOI9ByJ5
 mamNcIIMHoD9QOC2obzl0V/eWCtTWXK1zWV9BkxHUAtmBrAYALPVhcsvzfKDc0rI/cHTyvO6maLmY
 TtPbzeZr8E7Aq4zYCp/5qbYJDDcEHC3fyjXIlwpEYVD2mVe6CRY9dSazGpAugPui1nrY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=h8gdZkv7hNcmc562Myt0D02Ig1uHYyGPZcCltAMC02s=; b=ZYP+tn5ryw9eYX/IiuNCe4GpNB
 ENig33MB0MSU5WTKlsOs9JWITSnGnZz4R4V4JhyBWUJOWE7yqTQdPby5jg2w3F7jVFdXGz3csDKbp
 hsRL+OWX8Fk6l2YU+M8wjeZeFOjMcGpjIQhjA+t2+QQTbFsf9z2Xl0/+4Qy/QEx8nIjo=;
Received: from fhigh-a3-smtp.messagingengine.com ([103.168.172.154])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vIltr-0007xm-W4 for linux1394-devel@lists.sourceforge.net;
 Tue, 11 Nov 2025 10:47:01 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 52384140008A;
 Tue, 11 Nov 2025 05:46:49 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-06.internal (MEProxy); Tue, 11 Nov 2025 05:46:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1762858009; x=
 1762944409; bh=h8gdZkv7hNcmc562Myt0D02Ig1uHYyGPZcCltAMC02s=; b=U
 G0Kqnpg02azgSdNkcO+aETTCvOTOda9WFG0RNjn2kOXfnXQsx+t0tsOxRxWncnjN
 eHpbArdhuGFeJAkmW1vLRv8K+vrNFq8XDGp+XQU2akAFgyZQIP9PCd/vBKBF+hBn
 wqDLK/SZAv1FA+fucGgdZlxJoRJyvSA5h9ZwiuBK8P7JqaAiDsHnFoiyojEeo2rJ
 E2n4WcZV/uhGmU2i1NZtH+kKeOd/sCRhmm640GRcL2FxooMbi/S1+Z5IoZiNnX1W
 4qxDBH/vFO4Wpxv/Xn6ZqWBtuqKRzabEa2+h0qkpzMltWB74aQsvDEekvRqcrdiI
 5GHGtFmZp75QFoAOOxPuA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1762858009; x=1762944409; bh=h8gdZkv7hNcmc562Myt0D02Ig1uHYyGPZcC
 ltAMC02s=; b=X4A8rWis3kq+43JleUkqZxgd34dcux+xsdIhW5gZgL4VYCIXBkd
 Wgf/xwO/wiItJKQAPKViu6yyPYKAq8MESWSQJjuJj3tPBsbeXeRwn5w8nuDqYYdv
 9NT6pZKKzhq4rPoTuk234yanYEAE+b/ngfT7GRrpHNrpxA5+xot5jy1v6ztT1R4n
 /ADw2itKdjBLpAqS+RGL7x//qHW9fhDQSa/tfuKeb+LsX9HDDCNWw0RYUqpa9qQi
 HXi25YvERZClkFIiZAj3tVdXD5VQOEaporDTtDfi/sMyElzWIouzwkO/g4a3T51s
 d+QFleRMLOZcpcXes4QQdle4YMrlyDlcoKw==
X-ME-Sender: <xms:GRQTabeBI2op_uiD-9J7fW-kml_Es9gd1xOVK3O9jDgwBjv2PLNcTw>
 <xme:GRQTafLtNob1556HVEQHH9QGuSsenig8nTGa257LGhGUX0a0tWtwtG1ajP6MirrLJ
 9xqU0WcPZGR0fL9XlghfagU_Y29fIFv5uS8Pro8Ua9QGJL6S59_bw>
X-ME-Received: <xmr:GRQTacE5CaBm4YADC5RDbKEJqPgu1eDQnYHc5l1zoqVHTnFpeslHAhr5ss3jqeelb6W91_CrEnGzHVAM4LSc_RCxHqSpp4Hb>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddvtddtleelucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttdertd
 dttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeehhffhteetgf
 ekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeuudekueenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhu
 thdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurh
 gtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgv
 rhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:GRQTaZroVKeXQChUyT8zRg0KcxggwBmR-La4poVCKNr0I7B4j-_Zow>
 <xmx:GRQTaVQYrl0EDSAVVetH1NZRgsrEIx1CjyxOqZ2Rr3ya7eVVQnHGkg>
 <xmx:GRQTaWPLPURtJl3kCQrj2yzKRo5bEBa6Lqu7JkYteS1vqc_SWZCfDA>
 <xmx:GRQTaYOTzCBSCm9coSGZwWcI8SHROLhp7BaBCqs08TfOh04vIXIZbg>
 <xmx:GRQTaUz_mcSq-Nht-NAYjE1lHO1MiWmt6xQE3MUK_d9_uEgwipqDIiKi>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 11 Nov 2025 05:46:48 -0500 (EST)
Date: Tue, 11 Nov 2025 19:46:46 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH] firewire: core: clear sources of hardware interrupt at
 card removal
Message-ID: <20251111104646.GA180198@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20251109065525.163464-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251109065525.163464-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Nov 09, 2025 at 03:55:25PM +0900, Takashi Sakamoto
 wrote: > Due to the factors external to the system, hardware events may still
 be > handled while a card instance is being removed. The source [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1vIltr-0007xm-W4
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

On Sun, Nov 09, 2025 at 03:55:25PM +0900, Takashi Sakamoto wrote:
> Due to the factors external to the system, hardware events may still be
> handled while a card instance is being removed. The sources of hardware
> IRQs should be cleared during card removal so that workqueues can be safely
> destroyed.
> 
> This commit adds a disable callback to the underlying driver operations.
> After this callback returns, the underlying driver guarantees that it
> will no longer handle hardware events.
> 
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/core-card.c |  3 +++
>  drivers/firewire/core.h      |  3 +++
>  drivers/firewire/ohci.c      | 44 +++++++++++++++++++++++++++++-------
>  3 files changed, 42 insertions(+), 8 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
