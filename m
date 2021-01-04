Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 85C2E2E9C4C
	for <lists+linux1394-devel@lfdr.de>; Mon,  4 Jan 2021 18:44:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1kwTtl-0006XR-MM; Mon, 04 Jan 2021 17:44:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <bart.vanassche@gmail.com>) id 1kwTtk-0006XB-7F
 for linux1394-devel@lists.sourceforge.net; Mon, 04 Jan 2021 17:44:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W41s4SpHuFxfP2VmE7HCI4KFVMEE3WKx0iXTMwP7vnM=; b=NFW173F5jziBidB6WtYcnxKEX3
 MG38Sq9DJxEO7do9BCdim+4qzXM1wl+3cf3Pvk3cocjFY0ouebCrsoifebHlUGo/uMT/W/MJCJ6ip
 TAfQMEKLA3FCtyf2oCG0+3pIGt3WcL28LKcMqbXCpJv/JBR4IyB7jz4Dkg9gJQc+XL/I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=W41s4SpHuFxfP2VmE7HCI4KFVMEE3WKx0iXTMwP7vnM=; b=DUt/LgDnneIa6/5aM/RtcPfkDT
 +v1Z8lxiamczHEXLFFyI9QuTzUamCC/ZqXe925gveJbGTzc+OWFjVzMk9umsbbRYvKC4q17+8pfoX
 eEgOpJBiQ3rGW6a5VNmzVIY5tmn2tBbha6LzVf5eSmVSdepZ967ObYmOOQrINFkF5LHM=;
Received: from mail-pg1-f178.google.com ([209.85.215.178])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kwTtb-00ChTC-26
 for linux1394-devel@lists.sourceforge.net; Mon, 04 Jan 2021 17:44:04 +0000
Received: by mail-pg1-f178.google.com with SMTP id c22so19472395pgg.13
 for <linux1394-devel@lists.sourceforge.net>;
 Mon, 04 Jan 2021 09:43:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=W41s4SpHuFxfP2VmE7HCI4KFVMEE3WKx0iXTMwP7vnM=;
 b=cOHeG3Qb7x9XYSzwiRiduyYTLSRLaoq9AICUSsQ91T5KzxFnRbWLE/4Mo8Q0JKXQaJ
 0vnjaA4VttY+OwV9E/uildM2FI8HcTfzoCTPeZ7JIyt00VekZwAElIc3ZAZqCwwi6gxD
 3fy3xKIC+DuUv6Es/A1rMNTxGyDFmYqqZtWU/zh406xg/tw+218f1OCrcmrlAhIxDfqU
 AO0p6A2Hca3CZgV1T4b0v4GHPt5gl0ZbSOTO1vqWs9QZ71dxsvpcYmYszn5ddl8zc946
 R4kuBjlb/DfUcWCzQqYu69xlMLOuRqUsTiZrXdZ7dRx270lQtDlkaT1+v63dHJPQI/RO
 fSPw==
X-Gm-Message-State: AOAM530f5nXjjBTNRUw6FqLdHJD02csPmiis01uN5C+CbhDkoYiatFqc
 bSTDqsFfVT0vqhDlJY+ffpA=
X-Google-Smtp-Source: ABdhPJwKTIkHd9jD106iNYsMCjlbG9ke8DsYiuUgJzn38bv0xFujzmC1vyllUPjkZAgfvXQ07hPHdg==
X-Received: by 2002:a63:c1e:: with SMTP id b30mr71096758pgl.72.1609782229216; 
 Mon, 04 Jan 2021 09:43:49 -0800 (PST)
Received: from [192.168.3.217] (c-73-241-217-19.hsd1.ca.comcast.net.
 [73.241.217.19])
 by smtp.gmail.com with ESMTPSA id b4sm10376pju.33.2021.01.04.09.43.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 Jan 2021 09:43:48 -0800 (PST)
Subject: Re: [PATCH] scsi: target/sbp: remove firewire SBP target driver
To: Finn Thain <fthain@telegraphics.com.au>
References: <01020172acd3d10f-3964f076-a820-43fc-9494-3f3946e9b7b5-000000@eu-west-1.amazonses.com>
 <alpine.LNX.2.22.394.2006140934520.15@nippy.intranet>
 <7ad14946-5c25-fc49-1e48-72d37a607832@boo.tc>
 <alpine.LNX.2.22.394.2006150919110.8@nippy.intranet>
 <8da0c285-d707-a3d2-063e-472af5cc560f@boo.tc>
 <alpine.LNX.2.22.394.2006161929380.8@nippy.intranet>
 <8cbab988-fba7-8e27-7faf-9f7aa36ca235@acm.org>
 <alpine.LNX.2.22.394.2006171104540.11@nippy.intranet>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <e3b5ce6a-0152-01b8-89d2-80bcdb9c1c57@acm.org>
Date: Mon, 4 Jan 2021 09:43:46 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <alpine.LNX.2.22.394.2006171104540.11@nippy.intranet>
Content-Language: en-US
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (bart.vanassche[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.178 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.178 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kwTtb-00ChTC-26
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
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux-scsi@vger.kernel.org, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, Nicholas Bellinger <nab@linux-iscsi.org>,
 target-devel@vger.kernel.org, Chris Boot <bootc@boo.tc>,
 linux1394-devel@lists.sourceforge.net, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On 6/16/20 7:07 PM, Finn Thain wrote:
> On Tue, 16 Jun 2020, Bart Van Assche wrote:
>> As far as I know the sbp driver only has had one user ever and that user 
>> is no longer user the sbp driver.
> 
> So, you estimate the userbase at zero. Can you give a confidence level? 
> Actual measurement is hard because when end users encounter breakage, they 
> look for quick workarounds before they undertake post mortem, log 
> collection, bug reporting, mailing list discussions, analysis etc.

(replying to an e-mail from six months ago)

Hi Finn,

I am confident that my estimate is an accurate estimate since I have not
seen any sbp support requests, sbp bug reports nor any sbp bug fixes since
the sbp target driver has been accepted upstream.

> Here's a different question: "Why remove it from the kernel tree?"
> 
> If maintaining this code is a burden, is it not the kind of tax that all 
> developers/users pay to all developers/users? Does this driver impose an 
> unreasonably high burden for some reason?

Yes. If anyone wants to change the interface between SCSI target core and
SCSI target drivers, all target drivers, including the sbp and FCoE target
driver have to be retested. In other words, keeping unused target drivers
inside the kernel tree involves a significant maintenance burden for anyone
who wants to modify the interface between the SCSI target core and SCSI
target drivers.

Additionally, there is a good alternative available for the sbp driver.
Every system I know of that is equipped with a Firewire port also has an
Ethernet port. So users who want to provide SCSI target functionality on
such systems can use any SCSI transport protocol that is compatible with
Ethernet (iSCSI, iSER over soft-RoCE, SRP over soft-RoCE, ...).

Thanks,

Bart.


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
